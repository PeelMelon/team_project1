<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>
<%@ page import = "dob.DBManager" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Video Player</title>
    <link rel="stylesheet" href="./video.css">
</head>
<body>
    <div class="video-container">
        <iframe id="videoPlayer" width="600" height="400" frameborder="0" allowfullscreen></iframe>
    </div>

    <script>
        function getParameterByName(name, url = window.location.href) {
            name = name.replace(/[\[\]]/g, '\\$&');
            const regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)');
            const results = regex.exec(url);
            if (!results) return null;
            if (!results[2]) return '';
            return decodeURIComponent(results[2].replace(/\+/g, ' '));
        }

        const videoUrl = getParameterByName('video');
        if (videoUrl) {
            let embedUrl;
            if (videoUrl.includes('youtu.be')) {
                // YouTube 'youtu.be' 링크를 'embed' 링크로 변환
                const videoId = videoUrl.split('/').pop();
                embedUrl = `https://www.youtube.com/embed/${videoId}`;
            } else if (videoUrl.includes('youtube.com')) {
                // YouTube 'youtube.com/watch?v=' 링크를 'embed' 링크로 변환
                const videoId = new URL(videoUrl).searchParams.get('v');
                embedUrl = `https://www.youtube.com/embed/${videoId}`;
            } else {
                // 일반 동영상 파일
                embedUrl = videoUrl;
                document.getElementById('videoPlayer').setAttribute('src', embedUrl);
                document.getElementById('videoPlayer').setAttribute('type', 'video/mp4');
            }
            if (embedUrl) {
                document.getElementById('videoPlayer').setAttribute('src', embedUrl);
            }
        }
    </script>
</body>
</html>