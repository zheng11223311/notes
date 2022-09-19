.class public Lcom/tudou/service/download/DownloadUtils;
.super Ljava/lang/Object;
.source "DownloadUtils.java"


# static fields
.field public static final CLICK_MAX_COUNT:I = 0x5

.field public static final DANMU_FILE_NAME:Ljava/lang/String; = "danmu"

.field public static final FILE_NAME:Ljava/lang/String; = "info"

.field public static final SHARE_PREFERENCE_DOWNLOAD_LOGIN_CLICKCOUNT_KEY:Ljava/lang/String; = "clickCount"

.field public static final SHARE_PREFERENCE_DOWNLOAD_LOGIN_MAXCOUNT_KEY:Ljava/lang/String; = "maxCount"

.field public static final SHARE_PREFERENCE_DOWNLOAD_LOGIN_NAME:Ljava/lang/String; = "DownloadLogin"

.field public static final SHARE_PREFERENCE_PLAY_LOGIN_MAXCOUNT_KEY:Ljava/lang/String; = "playMaxCount"

.field private static final TAG:Ljava/lang/String; = "Download_Utils"

.field private static final df:Ljava/text/DecimalFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 766
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tudou/service/download/DownloadUtils;->df:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static compatible3_0(Lorg/json/JSONObject;Lcom/tudou/service/download/DownloadInfo;Z)Ljava/lang/String;
    .locals 3
    .param p0, "o"    # Lorg/json/JSONObject;
    .param p1, "info"    # Lcom/tudou/service/download/DownloadInfo;
    .param p2, "first"    # Z

    .prologue
    const/4 v2, 0x1

    .line 836
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getTudouFormat()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getTudouFormat()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getTudouFormat()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "f4v_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tudou/service/download/DownloadInfo;->getTudouFormat()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 870
    :goto_0
    return-object v0

    .line 853
    :cond_0
    const-string v0, "f4v_5"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 854
    const-string v0, "Download_Utils"

    const-string v1, "f4v_5"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Lcom/tudou/service/download/DownloadInfo;->setTudouFormat(IZ)V

    .line 856
    const-string v0, "f4v_5"

    goto :goto_0

    .line 857
    :cond_1
    const-string v0, "f4v_4"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 858
    const-string v0, "Download_Utils"

    const-string v1, "f4v_4"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/tudou/service/download/DownloadInfo;->setTudouFormat(IZ)V

    .line 860
    const-string v0, "f4v_4"

    goto :goto_0

    .line 861
    :cond_2
    const-string v0, "f4v_3"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 862
    const-string v0, "Download_Utils"

    const-string v1, "f4v_3"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/tudou/service/download/DownloadInfo;->setTudouFormat(IZ)V

    .line 864
    const-string v0, "f4v_3"

    goto :goto_0

    .line 865
    :cond_3
    const-string v0, "f4v_2"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 866
    const-string v0, "Download_Utils"

    const-string v1, "f4v_2"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/tudou/service/download/DownloadInfo;->setTudouFormat(IZ)V

    .line 868
    const-string v0, "f4v_2"

    goto :goto_0

    .line 870
    :cond_4
    const-string v0, ""

    goto :goto_0
.end method

.method public static createVideoThumbnail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p0, "imgUrl"    # Ljava/lang/String;
    .param p1, "savePath"    # Ljava/lang/String;

    .prologue
    .line 552
    const/4 v2, 0x0

    .line 553
    .local v2, "f":Ljava/io/File;
    const-string v9, "Download_Utils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createVideoThumbnail()/imgUrl \uff1a"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    new-instance v2, Ljava/io/File;

    .end local v2    # "f":Ljava/io/File;
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 555
    .restart local v2    # "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 556
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 557
    :cond_0
    new-instance v2, Ljava/io/File;

    .end local v2    # "f":Ljava/io/File;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "1.png"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 558
    .restart local v2    # "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 559
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-eqz v9, :cond_2

    .line 597
    :cond_1
    :goto_0
    return-void

    .line 561
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 563
    :cond_3
    const/4 v3, 0x0

    .line 564
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 567
    .local v6, "i":Ljava/io/InputStream;
    :try_start_0
    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 568
    .local v8, "url":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 569
    .local v5, "httConn":Ljava/net/HttpURLConnection;
    const/16 v9, 0x3a98

    invoke-virtual {v5, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 570
    const/16 v9, 0x3a98

    invoke-virtual {v5, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 571
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 572
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 573
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 574
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    const/16 v9, 0x400

    :try_start_1
    new-array v0, v9, [B

    .line 576
    .local v0, "buf":[B
    const/4 v7, 0x0

    .line 577
    .local v7, "len":I
    :goto_1
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_6

    .line 578
    const/4 v9, 0x0

    invoke-virtual {v4, v0, v9, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 584
    .end local v0    # "buf":[B
    .end local v7    # "len":I
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 585
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "httConn":Ljava/net/HttpURLConnection;
    .end local v8    # "url":Ljava/net/URL;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_2
    const-string v9, "Download_Utils"

    const-string v10, "createVideoThumbnail()"

    invoke-static {v9, v10, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 586
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 587
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 590
    :cond_4
    if-eqz v3, :cond_5

    .line 591
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 592
    :cond_5
    if-eqz v6, :cond_1

    .line 593
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 594
    :catch_1
    move-exception v9

    goto :goto_0

    .line 580
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "buf":[B
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "httConn":Ljava/net/HttpURLConnection;
    .restart local v7    # "len":I
    .restart local v8    # "url":Ljava/net/URL;
    :cond_6
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 582
    sget-object v9, Lcom/tudou/android/Youku;->context:Landroid/content/Context;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "com.tudou.serivce.download.ACTION_DOWNLOAD_NEEDREFRESH"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 590
    if-eqz v4, :cond_7

    .line 591
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 592
    :cond_7
    if-eqz v6, :cond_8

    .line 593
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_8
    move-object v3, v4

    .line 595
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 594
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v9

    move-object v3, v4

    .line 596
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 589
    .end local v0    # "buf":[B
    .end local v5    # "httConn":Ljava/net/HttpURLConnection;
    .end local v7    # "len":I
    .end local v8    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v9

    .line 590
    :goto_3
    if-eqz v3, :cond_9

    .line 591
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 592
    :cond_9
    if-eqz v6, :cond_a

    .line 593
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 595
    :cond_a
    :goto_4
    throw v9

    .line 594
    :catch_3
    move-exception v10

    goto :goto_4

    .line 589
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "httConn":Ljava/net/HttpURLConnection;
    .restart local v8    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 584
    .end local v5    # "httConn":Ljava/net/HttpURLConnection;
    .end local v8    # "url":Ljava/net/URL;
    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method private static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 467
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    .line 468
    .local v1, "bytes":[B
    const-string v2, "094b2a34e812a4282f25c7ca1987789f"

    invoke-static {v1, v2}, Lcom/baseproject/utils/AesUtils;->decrypt([BLjava/lang/String;)[B

    move-result-object v0

    .line 469
    .local v0, "b":[B
    new-instance p0, Ljava/lang/String;

    .end local p0    # "json":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    .line 470
    .restart local p0    # "json":Ljava/lang/String;
    return-object p0
.end method

.method public static getCacheDanmu(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p0, "itemCode"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 874
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "danmu"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 875
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_0

    .line 896
    :goto_0
    return-void

    .line 878
    :cond_0
    invoke-static {p0}, Lcom/youku/http/TudouURLContainer;->getAllDanmuForCacheVideo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 879
    .local v1, "cacheDanmuUrl":Ljava/lang/String;
    const/4 v5, 0x0

    .line 881
    .local v5, "url":Ljava/net/URL;
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 882
    .end local v5    # "url":Ljava/net/URL;
    .local v6, "url":Ljava/net/URL;
    :try_start_1
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 883
    .local v2, "conn":Ljava/net/HttpURLConnection;
    const/16 v7, 0x7530

    invoke-virtual {v2, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 884
    const/16 v7, 0x7530

    invoke-virtual {v2, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 885
    const-string v7, "User-Agent"

    sget-object v8, Lcom/tudou/android/Youku;->User_Agent:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Lcom/youku/util/Util;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 887
    .local v0, "cacheDanmu":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/tudou/service/download/DownloadUtils;->makeCacheDanmuFile(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object v5, v6

    .line 894
    .end local v6    # "url":Ljava/net/URL;
    .restart local v5    # "url":Ljava/net/URL;
    goto :goto_0

    .line 888
    .end local v0    # "cacheDanmu":Ljava/lang/String;
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v3

    .line 889
    .local v3, "e":Ljava/net/MalformedURLException;
    :goto_1
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 890
    .end local v3    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v3

    .line 891
    .local v3, "e":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 892
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 893
    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 892
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "url":Ljava/net/URL;
    .restart local v6    # "url":Ljava/net/URL;
    :catch_3
    move-exception v3

    move-object v5, v6

    .end local v6    # "url":Ljava/net/URL;
    .restart local v5    # "url":Ljava/net/URL;
    goto :goto_3

    .line 890
    .end local v5    # "url":Ljava/net/URL;
    .restart local v6    # "url":Ljava/net/URL;
    :catch_4
    move-exception v3

    move-object v5, v6

    .end local v6    # "url":Ljava/net/URL;
    .restart local v5    # "url":Ljava/net/URL;
    goto :goto_2

    .line 888
    .end local v5    # "url":Ljava/net/URL;
    .restart local v6    # "url":Ljava/net/URL;
    :catch_5
    move-exception v3

    move-object v5, v6

    .end local v6    # "url":Ljava/net/URL;
    .restart local v5    # "url":Ljava/net/URL;
    goto :goto_1
.end method

.method public static getDownloadData(Lcom/tudou/service/download/DownloadInfo;Lcom/tudou/service/download/IVideoDownloadCallBack;)Z
    .locals 1
    .param p0, "info"    # Lcom/tudou/service/download/DownloadInfo;
    .param p1, "dcallback"    # Lcom/tudou/service/download/IVideoDownloadCallBack;

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tudou/service/download/DownloadUtils;->getDownloadData(Lcom/tudou/service/download/DownloadInfo;Lcom/tudou/service/download/IVideoDownloadCallBack;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getDownloadData(Lcom/tudou/service/download/DownloadInfo;Lcom/tudou/service/download/IVideoDownloadCallBack;Ljava/lang/String;)Z
    .locals 48
    .param p0, "info"    # Lcom/tudou/service/download/DownloadInfo;
    .param p1, "dcallback"    # Lcom/tudou/service/download/IVideoDownloadCallBack;
    .param p2, "downloadurl"    # Ljava/lang/String;

    .prologue
    .line 102
    const/16 v38, 0x0

    .line 103
    .local v38, "url":Ljava/net/URL;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/service/download/DownloadInfo;->getFormat()I

    move-result v41

    if-nez v41, :cond_0

    .line 104
    const/16 v41, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadInfo;->setFormat(I)V

    .line 105
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-nez v41, :cond_1

    move-object/from16 v8, p2

    .line 109
    .local v8, "durl":Ljava/lang/String;
    :goto_0
    sget-boolean v41, Lcom/tudou/android/Youku;->isHighEnd:Z

    if-eqz v41, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/tudou/service/download/DownloadInfo;->getFormat()I

    move-result v41

    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadInfo;->setFormat(I)V

    .line 111
    new-instance v39, Ljava/net/URL;

    move-object/from16 v0, v39

    invoke-direct {v0, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a

    .line 112
    .end local v38    # "url":Ljava/net/URL;
    .local v39, "url":Ljava/net/URL;
    :try_start_1
    const-string v41, "Download_Utils"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "url---"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {v39 .. v39}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 114
    .local v4, "conn":Ljava/net/HttpURLConnection;
    const/16 v41, 0x7530

    move/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 115
    const/16 v41, 0x7530

    move/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 116
    const-string v41, "User-Agent"

    sget-object v42, Lcom/tudou/android/Youku;->User_Agent:Ljava/lang/String;

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v4, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v41

    const/16 v42, 0x194

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_3

    .line 118
    const/16 v41, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadInfo;->setExceptionId(I)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 119
    const/16 v41, 0x0

    .line 401
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    .end local v8    # "durl":Ljava/lang/String;
    .end local v39    # "url":Ljava/net/URL;
    :goto_2
    return v41

    .line 105
    .restart local v38    # "url":Ljava/net/URL;
    :cond_1
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/service/download/DownloadInfo;->getVid()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {p0 .. p0}, Lcom/tudou/service/download/DownloadInfo;->getTudouFormat()I

    move-result v42

    invoke-virtual/range {p0 .. p0}, Lcom/tudou/service/download/DownloadInfo;->getFormat()I

    move-result v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/service/download/DownloadInfo;->langcode:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-static/range {v41 .. v44}, Lcom/youku/http/TudouURLContainer;->getVideoUrlTudou(Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a

    move-result-object v8

    goto :goto_0

    .line 109
    .restart local v8    # "durl":Ljava/lang/String;
    :cond_2
    const/16 v41, 0x4

    goto :goto_1

    .line 120
    .end local v38    # "url":Ljava/net/URL;
    .restart local v4    # "conn":Ljava/net/HttpURLConnection;
    .restart local v39    # "url":Ljava/net/URL;
    :cond_3
    :try_start_3
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v41

    const/16 v42, 0x19a

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_5

    .line 121
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v16

    .line 122
    .local v16, "is":Ljava/io/InputStream;
    invoke-static/range {v16 .. v16}, Lcom/youku/util/Util;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 123
    .local v6, "d":D
    double-to-long v0, v6

    move-wide/from16 v42, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    const-wide/16 v46, 0x3e8

    div-long v44, v44, v46

    sub-long v42, v42, v44

    sput-wide v42, Lcom/youku/http/TudouURLContainer;->TIMESTAMP:J

    .line 125
    const-string v41, "GET"

    move-object/from16 v0, v41

    invoke-static {v8, v0}, Lcom/youku/http/TudouURLContainer;->updateUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 126
    if-eqz v16, :cond_4

    .line 127
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 128
    const/16 v16, 0x0

    .line 130
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v8}, Lcom/tudou/service/download/DownloadUtils;->getDownloadData(Lcom/tudou/service/download/DownloadInfo;Lcom/tudou/service/download/IVideoDownloadCallBack;Ljava/lang/String;)Z

    move-result v41

    goto :goto_2

    .line 132
    .end local v6    # "d":D
    .end local v16    # "is":Ljava/io/InputStream;
    :cond_5
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/youku/util/Util;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v19

    .line 133
    .local v19, "json":Ljava/lang/String;
    const-string v41, "Download_Utils"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "json : "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/tudou/service/download/DownloadUtils;->isSuccessCache(Lcom/tudou/service/download/DownloadInfo;Lcom/tudou/service/download/IVideoDownloadCallBack;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result v41

    if-eqz v41, :cond_7

    .line 136
    :try_start_4
    invoke-static/range {v19 .. v19}, Lcom/tudou/service/download/DownloadUtils;->decrypt(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v19

    .line 144
    :try_start_5
    new-instance v21, Lorg/json/JSONObject;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 145
    .local v21, "result":Lorg/json/JSONObject;
    const-string/jumbo v41, "sid_data"

    move-object/from16 v0, v21

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_8

    .line 146
    const/16 v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tudou/service/download/DownloadInfo;->hotlink:Z

    .line 147
    const-string/jumbo v41, "sid_data"

    move-object/from16 v0, v21

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 148
    .local v18, "j":Lorg/json/JSONObject;
    const-string/jumbo v41, "token"

    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tudou/service/download/DownloadInfo;->token:Ljava/lang/String;

    .line 149
    const-string v41, "oip"

    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tudou/service/download/DownloadInfo;->oip:Ljava/lang/String;

    .line 150
    const-string/jumbo v41, "sid"

    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tudou/service/download/DownloadInfo;->sid:Ljava/lang/String;

    .line 155
    .end local v18    # "j":Lorg/json/JSONObject;
    :goto_3
    const/4 v5, 0x0

    .line 156
    .local v5, "datas":Lorg/json/JSONArray;
    const-string/jumbo v41, "status"

    move-object/from16 v0, v21

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 157
    .local v34, "status":Ljava/lang/String;
    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-nez v41, :cond_a

    const-string v41, "failed"

    move-object/from16 v0, v41

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_a

    .line 158
    if-eqz p1, :cond_6

    .line 159
    invoke-interface/range {p1 .. p1}, Lcom/tudou/service/download/IVideoDownloadCallBack;->onFailed()V

    .line 160
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/tudou/service/download/DownloadUtils;->getFailReason(Lcom/tudou/service/download/DownloadInfo;Lorg/json/JSONObject;)V

    .line 161
    const/16 v41, 0x0

    goto/16 :goto_2

    .line 137
    .end local v5    # "datas":Lorg/json/JSONArray;
    .end local v21    # "result":Lorg/json/JSONObject;
    .end local v34    # "status":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 138
    .local v10, "e1":Ljava/lang/NullPointerException;
    const-string v41, "Download_Utils"

    const-string/jumbo v42, "\u89e3\u5bc6\u51fa\u9519"

    invoke-static/range {v41 .. v42}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/16 v41, 0x0

    goto/16 :goto_2

    .line 142
    .end local v10    # "e1":Ljava/lang/NullPointerException;
    :cond_7
    const/16 v41, 0x0

    goto/16 :goto_2

    .line 152
    .restart local v21    # "result":Lorg/json/JSONObject;
    :cond_8
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tudou/service/download/DownloadInfo;->hotlink:Z
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    .line 384
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    .end local v19    # "json":Ljava/lang/String;
    .end local v21    # "result":Lorg/json/JSONObject;
    :catch_1
    move-exception v9

    move-object/from16 v38, v39

    .line 388
    .end local v8    # "durl":Ljava/lang/String;
    .end local v39    # "url":Ljava/net/URL;
    .local v9, "e":Ljava/net/SocketTimeoutException;
    .restart local v38    # "url":Ljava/net/URL;
    :goto_4
    if-eqz p1, :cond_9

    .line 389
    invoke-interface/range {p1 .. p1}, Lcom/tudou/service/download/IVideoDownloadCallBack;->onFailed()V

    .line 390
    :cond_9
    const/16 v41, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadInfo;->setExceptionId(I)V

    .line 392
    const/16 v41, 0x0

    goto/16 :goto_2

    .line 163
    .end local v9    # "e":Ljava/net/SocketTimeoutException;
    .end local v38    # "url":Ljava/net/URL;
    .restart local v4    # "conn":Ljava/net/HttpURLConnection;
    .restart local v5    # "datas":Lorg/json/JSONArray;
    .restart local v8    # "durl":Ljava/lang/String;
    .restart local v19    # "json":Ljava/lang/String;
    .restart local v21    # "result":Lorg/json/JSONObject;
    .restart local v34    # "status":Ljava/lang/String;
    .restart local v39    # "url":Ljava/net/URL;
    :cond_a
    :try_start_6
    const-string/jumbo v41, "seriesmode"

    move-object/from16 v0, v21

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_b

    .line 164
    const-string/jumbo v41, "seriesmode"

    move-object/from16 v0, v21

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tudou/service/download/DownloadInfo;->seriesmode:Ljava/lang/String;

    .line 165
    :cond_b
    const-string/jumbo v41, "vertical_player"

    move-object/from16 v0, v21

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_c

    .line 166
    const-string/jumbo v41, "vertical_player"

    move-object/from16 v0, v21

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_11

    const/16 v41, 0x1

    :goto_5
    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tudou/service/download/DownloadInfo;->vertical_player:Z

    .line 167
    :cond_c
    const-string v41, "exclusive_logo"

    move-object/from16 v0, v21

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_d

    .line 168
    const-string v41, "exclusive_logo"

    move-object/from16 v0, v21

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_12

    const/16 v41, 0x1

    :goto_6
    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tudou/service/download/DownloadInfo;->exclusive_logo:Z

    .line 169
    :cond_d
    const-string/jumbo v41, "results"

    move-object/from16 v0, v21

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    .line 170
    .local v20, "o":Lorg/json/JSONObject;
    const-string/jumbo v41, "type"

    move-object/from16 v0, v21

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 172
    .local v37, "type":Ljava/lang/String;
    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-nez v41, :cond_13

    const-string/jumbo v41, "tudou"

    move-object/from16 v0, v41

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_13

    .line 173
    const-string/jumbo v41, "tudou"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadInfo;->setFormto(Ljava/lang/String;)V

    .line 174
    const/16 v41, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadInfo;->setFormat(I)V

    .line 175
    const-string v41, "Download_Utils"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "\u8fd4\u56de\u7684\u6570\u636e\u683c\u5f0f"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    sget-object v43, Lcom/tudou/service/download/DownloadInfo;->FORMAT_STRINGS:[Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/tudou/service/download/DownloadInfo;->getFormat()I

    move-result v44

    aget-object v43, v43, v44

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "_"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {p0 .. p0}, Lcom/tudou/service/download/DownloadInfo;->getTudouFormat()I

    move-result v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/16 v41, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v41

    invoke-static {v0, v1, v2}, Lcom/tudou/service/download/DownloadUtils;->compatible3_0(Lorg/json/JSONObject;Lcom/tudou/service/download/DownloadInfo;Z)Ljava/lang/String;

    move-result-object v36

    .line 181
    .local v36, "tudouFormat":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_e

    .line 182
    const/16 v41, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v41

    invoke-static {v0, v1, v2}, Lcom/tudou/service/download/DownloadUtils;->compatible3_0(Lorg/json/JSONObject;Lcom/tudou/service/download/DownloadInfo;Z)Ljava/lang/String;

    move-result-object v36

    .line 184
    :cond_e
    move-object/from16 v0, v20

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v41

    const-string/jumbo v42, "segs"

    invoke-virtual/range {v41 .. v42}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 186
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v22

    .line 187
    .local v22, "segCount":I
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tudou/service/download/DownloadInfo;->segCount:I

    .line 327
    .end local v36    # "tudouFormat":Ljava/lang/String;
    :goto_7
    sget-object v41, Lcom/tudou/service/download/DownloadInfo;->FORMAT_STRINGS:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/service/download/DownloadInfo;->format:I

    move/from16 v42, v0

    aget-object v13, v41, v42

    .line 328
    .local v13, "formatStr":Ljava/lang/String;
    const-string/jumbo v41, "streamlogos"

    move-object/from16 v0, v21

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v35

    .line 329
    .local v35, "temp":Lorg/json/JSONObject;
    if-eqz v35, :cond_f

    .line 330
    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v40

    .line 331
    .local v40, "watermark":Lorg/json/JSONObject;
    if-eqz v40, :cond_f

    .line 332
    const-string v41, "logo"

    invoke-virtual/range {v40 .. v41}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v12

    .line 333
    .local v12, "flogo":I
    const-string/jumbo v41, "type"

    invoke-virtual/range {v40 .. v41}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    .line 334
    .local v14, "ftype":I
    if-nez v12, :cond_f

    .line 335
    const-string v41, "Download_Utils"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "formatStr -- "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " -flogo -- "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " -ftype -- "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    move-object/from16 v0, p0

    iput v14, v0, Lcom/tudou/service/download/DownloadInfo;->type:I

    .line 338
    const/16 v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/tudou/service/download/DownloadInfo;->isShowWatermark:Z

    .line 343
    .end local v12    # "flogo":I
    .end local v14    # "ftype":I
    .end local v40    # "watermark":Lorg/json/JSONObject;
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/service/download/DownloadInfo;->segCount:I

    move/from16 v41, v0

    move/from16 v0, v41

    new-array v0, v0, [J

    move-object/from16 v29, v0

    .line 344
    .local v29, "segsSize":[J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/service/download/DownloadInfo;->segCount:I

    move/from16 v41, v0

    move/from16 v0, v41

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v30, v0

    .line 345
    .local v30, "segsUrl":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/service/download/DownloadInfo;->segCount:I

    move/from16 v41, v0

    move/from16 v0, v41

    new-array v0, v0, [I

    move-object/from16 v28, v0

    .line 346
    .local v28, "segsSeconds":[I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/service/download/DownloadInfo;->segCount:I

    move/from16 v41, v0

    move/from16 v0, v41

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    .line 347
    .local v31, "segsfileId":[Ljava/lang/String;
    const-wide/16 v32, 0x0

    .line 348
    .local v32, "size":J
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/service/download/DownloadInfo;->segCount:I

    move/from16 v41, v0

    move/from16 v0, v41

    if-ge v15, v0, :cond_25

    .line 349
    const-string v41, "Download_Utils"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "downloadInfo.getSegCount()---"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tudou/service/download/DownloadInfo;->segCount:I

    move/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-virtual {v5, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    .line 351
    .local v17, "item":Lorg/json/JSONObject;
    const-string/jumbo v41, "size"

    move-object/from16 v0, v17

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v24

    .line 352
    .local v24, "segSize":J
    const-string v41, "id"

    move-object/from16 v0, v17

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v26

    .line 353
    .local v26, "segStep":I
    const-string/jumbo v41, "seconds"

    move-object/from16 v0, v17

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    .line 354
    .local v23, "segSeconds":I
    const/16 v27, 0x0

    .line 355
    .local v27, "segUrl":Ljava/lang/String;
    const-string/jumbo v41, "url"

    move-object/from16 v0, v17

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 356
    const-string v41, "fileid"

    move-object/from16 v0, v17

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_10

    .line 357
    const-string v41, "fileid"

    move-object/from16 v0, v17

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 358
    .local v11, "fileid":Ljava/lang/String;
    add-int/lit8 v41, v26, -0x1

    aput-object v11, v31, v41

    .line 360
    .end local v11    # "fileid":Ljava/lang/String;
    :cond_10
    add-int/lit8 v41, v26, -0x1

    aput-wide v24, v29, v41

    .line 361
    add-int/lit8 v41, v26, -0x1

    aput-object v27, v30, v41

    .line 362
    add-int/lit8 v41, v26, -0x1

    aput v23, v28, v41

    .line 363
    add-long v32, v32, v24

    .line 348
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_8

    .line 166
    .end local v13    # "formatStr":Ljava/lang/String;
    .end local v15    # "i":I
    .end local v17    # "item":Lorg/json/JSONObject;
    .end local v20    # "o":Lorg/json/JSONObject;
    .end local v22    # "segCount":I
    .end local v23    # "segSeconds":I
    .end local v24    # "segSize":J
    .end local v26    # "segStep":I
    .end local v27    # "segUrl":Ljava/lang/String;
    .end local v28    # "segsSeconds":[I
    .end local v29    # "segsSize":[J
    .end local v30    # "segsUrl":[Ljava/lang/String;
    .end local v31    # "segsfileId":[Ljava/lang/String;
    .end local v32    # "size":J
    .end local v35    # "temp":Lorg/json/JSONObject;
    .end local v37    # "type":Ljava/lang/String;
    :cond_11
    const/16 v41, 0x0

    goto/16 :goto_5

    .line 168
    :cond_12
    const/16 v41, 0x0

    goto/16 :goto_6

    .line 189
    .restart local v20    # "o":Lorg/json/JSONObject;
    .restart local v37    # "type":Ljava/lang/String;
    :cond_13
    const-string/jumbo v41, "youku"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadInfo;->setFormto(Ljava/lang/String;)V

    .line 190
    sget-boolean v41, Lcom/tudou/android/Youku;->isHighEnd:Z

    if-eqz v41, :cond_1f

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/service/download/DownloadInfo;->getFormat()I

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/tudou/service/download/DownloadInfo;->getFormat()I

    move-result v41

    const/16 v42, 0x4

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_16

    .line 194
    :cond_14
    sget-object v41, Lcom/tudou/service/download/DownloadInfo;->FORMAT_STRINGS:[Ljava/lang/String;

    const/16 v42, 0x1

    aget-object v41, v41, v42

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-result v41

    if-nez v41, :cond_15

    .line 196
    const/16 v41, 0x1

    :try_start_7
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadInfo;->setFormat(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_1

    .line 198
    :try_start_8
    sget-object v41, Lcom/tudou/service/download/DownloadInfo;->FORMAT_STRINGS:[Ljava/lang/String;

    const/16 v42, 0x1

    aget-object v41, v41, v42

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    .line 199
    const-string/jumbo v41, "segs"

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_1

    move-result-object v5

    .line 208
    :cond_15
    :goto_9
    if-nez v5, :cond_16

    .line 209
    :try_start_9
    sget-object v41, Lcom/tudou/service/download/DownloadInfo;->FORMAT_STRINGS:[Ljava/lang/String;

    const/16 v42, 0x4

    aget-object v41, v41, v42

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_1c

    .line 210
    const/16 v41, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadInfo;->setFormat(I)V
    :try_end_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 212
    :try_start_a
    sget-object v41, Lcom/tudou/service/download/DownloadInfo;->FORMAT_STRINGS:[Ljava/lang/String;

    const/16 v42, 0x4

    aget-object v41, v41, v42

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    .line 213
    const-string/jumbo v41, "segs"

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    move-result-object v5

    .line 226
    :cond_16
    :goto_a
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/service/download/DownloadInfo;->getFormat()I

    move-result v41

    const/16 v42, 0x5

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/tudou/service/download/DownloadInfo;->getFormat()I

    move-result v41

    const/16 v42, 0x3

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/tudou/service/download/DownloadInfo;->getFormat()I

    move-result v41

    const/16 v42, 0x2

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_1a

    .line 229
    :cond_17
    sget-object v41, Lcom/tudou/service/download/DownloadInfo;->FORMAT_STRINGS:[Ljava/lang/String;

    const/16 v42, 0x5

    aget-object v41, v41, v42

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
    :try_end_b
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    move-result v41

    if-nez v41, :cond_18

    .line 231
    const/16 v41, 0x5

    :try_start_c
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadInfo;->setFormat(I)V

    .line 232
    sget-object v41, Lcom/tudou/service/download/DownloadInfo;->FORMAT_STRINGS:[Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/tudou/service/download/DownloadInfo;->getFormat()I

    move-result v42

    aget-object v41, v41, v42

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    .line 234
    const-string/jumbo v41, "segs"

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_1

    move-result-object v5

    .line 239
    :cond_18
    :goto_b
    if-nez v5, :cond_19

    :try_start_d
    sget-object v41, Lcom/tudou/service/download/DownloadInfo;->FORMAT_STRINGS:[Ljava/lang/String;

    const/16 v42, 0x3

    aget-object v41, v41, v42

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
    :try_end_d
    .catch Ljava/net/SocketTimeoutException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    move-result v41

    if-nez v41, :cond_19

    .line 242
    const/16 v41, 0x3

    :try_start_e
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadInfo;->setFormat(I)V

    .line 243
    sget-object v41, Lcom/tudou/service/download/DownloadInfo;->FORMAT_STRINGS:[Ljava/lang/String;

    const/16 v42, 0x3

    aget-object v41, v41, v42

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    .line 244
    const-string/jumbo v41, "segs"

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_e .. :try_end_e} :catch_1

    move-result-object v5

    .line 249
    :cond_19
    :goto_c
    if-nez v5, :cond_1a

    .line 250
    :try_start_f
    sget-object v41, Lcom/tudou/service/download/DownloadInfo;->FORMAT_STRINGS:[Ljava/lang/String;

    const/16 v42, 0x2

    aget-object v41, v41, v42

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_1d

    .line 251
    const/16 v41, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadInfo;->setFormat(I)V

    .line 252
    sget-object v41, Lcom/tudou/service/download/DownloadInfo;->FORMAT_STRINGS:[Ljava/lang/String;

    const/16 v42, 0x2

    aget-object v41, v41, v42

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    .line 253
    const-string/jumbo v41, "segs"

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 262
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/service/download/DownloadInfo;->getFormat()I

    move-result v41

    const/16 v42, 0x7

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_1b

    .line 263
    sget-object v41, Lcom/tudou/service/download/DownloadInfo;->FORMAT_STRINGS:[Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/tudou/service/download/DownloadInfo;->getFormat()I

    move-result v42

    aget-object v41, v41, v42

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
    :try_end_f
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    move-result v41

    if-nez v41, :cond_1e

    .line 266
    :try_start_10
    sget-object v41, Lcom/tudou/service/download/DownloadInfo;->FORMAT_STRINGS:[Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/tudou/service/download/DownloadInfo;->getFormat()I

    move-result v42

    aget-object v41, v41, v42

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    .line 268
    const-string/jumbo v41, "segs"

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Ljava/net/SocketTimeoutException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4

    move-result-object v5

    .line 308
    :cond_1b
    :goto_d
    :try_start_11
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v22

    .line 310
    .restart local v22    # "segCount":I
    if-nez v22, :cond_24

    .line 311
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/service/download/DownloadInfo;->getFormat()I

    move-result v41

    const/16 v42, 0x7

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_22

    .line 312
    const/16 v41, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadInfo;->setFormat(I)V

    .line 313
    invoke-static/range {p0 .. p1}, Lcom/tudou/service/download/DownloadUtils;->getDownloadData(Lcom/tudou/service/download/DownloadInfo;Lcom/tudou/service/download/IVideoDownloadCallBack;)Z
    :try_end_11
    .catch Ljava/net/SocketTimeoutException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4

    move-result v41

    goto/16 :goto_2

    .line 200
    .end local v22    # "segCount":I
    :catch_2
    move-exception v9

    .line 201
    .local v9, "e":Lorg/json/JSONException;
    const/16 v41, 0x5

    :try_start_12
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadInfo;->setFormat(I)V

    .line 202
    invoke-static/range {p0 .. p1}, Lcom/tudou/service/download/DownloadUtils;->getDownloadData(Lcom/tudou/service/download/DownloadInfo;Lcom/tudou/service/download/IVideoDownloadCallBack;)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_12 .. :try_end_12} :catch_1

    move-result v41

    goto/16 :goto_2

    .line 204
    .end local v9    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v9

    .line 205
    .local v9, "e":Ljava/lang/Exception;
    :try_start_13
    const-string v41, "Download_Utils"

    const-string v42, "mp4\u683c\u5f0f\u6570\u636e\u8fd4\u56de\u4e3a\u7a7a"

    invoke-static/range {v41 .. v42}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/net/SocketTimeoutException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4

    goto/16 :goto_9

    .line 393
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "datas":Lorg/json/JSONArray;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v19    # "json":Ljava/lang/String;
    .end local v20    # "o":Lorg/json/JSONObject;
    .end local v21    # "result":Lorg/json/JSONObject;
    .end local v34    # "status":Ljava/lang/String;
    .end local v37    # "type":Ljava/lang/String;
    :catch_4
    move-exception v9

    move-object/from16 v38, v39

    .line 397
    .end local v8    # "durl":Ljava/lang/String;
    .end local v39    # "url":Ljava/net/URL;
    .restart local v9    # "e":Ljava/lang/Exception;
    .restart local v38    # "url":Ljava/net/URL;
    :goto_e
    const/16 v41, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadInfo;->setExceptionId(I)V

    .line 399
    const/16 v41, 0x0

    goto/16 :goto_2

    .line 214
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v38    # "url":Ljava/net/URL;
    .restart local v4    # "conn":Ljava/net/HttpURLConnection;
    .restart local v5    # "datas":Lorg/json/JSONArray;
    .restart local v8    # "durl":Ljava/lang/String;
    .restart local v19    # "json":Ljava/lang/String;
    .restart local v20    # "o":Lorg/json/JSONObject;
    .restart local v21    # "result":Lorg/json/JSONObject;
    .restart local v34    # "status":Ljava/lang/String;
    .restart local v37    # "type":Ljava/lang/String;
    .restart local v39    # "url":Ljava/net/URL;
    :catch_5
    move-exception v9

    .line 215
    .local v9, "e":Lorg/json/JSONException;
    const/16 v41, 0x5

    :try_start_14
    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadInfo;->setFormat(I)V

    .line 216
    invoke-static/range {p0 .. p1}, Lcom/tudou/service/download/DownloadUtils;->getDownloadData(Lcom/tudou/service/download/DownloadInfo;Lcom/tudou/service/download/IVideoDownloadCallBack;)Z

    move-result v41

    goto/16 :goto_2

    .line 219
    .end local v9    # "e":Lorg/json/JSONException;
    :cond_1c
    const/16 v41, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadInfo;->setFormat(I)V

    goto/16 :goto_a

    .line 235
    :catch_6
    move-exception v9

    .line 236
    .local v9, "e":Ljava/lang/Exception;
    const-string v41, "Download_Utils"

    const-string v42, "flvhd\u683c\u5f0f\u6570\u636e\u8fd4\u56de\u4e3a\u7a7a"

    invoke-static/range {v41 .. v42}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 245
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v9

    .line 246
    .restart local v9    # "e":Ljava/lang/Exception;
    const-string v41, "Download_Utils"

    const-string v42, "flv\u683c\u5f0f\u6570\u636e\u8fd4\u56de\u4e3a\u7a7a"

    invoke-static/range {v41 .. v42}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 255
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_1d
    const/16 v41, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadInfo;->setExceptionId(I)V

    .line 256
    const/16 v41, 0x0

    goto/16 :goto_2

    .line 269
    :catch_8
    move-exception v9

    .line 270
    .local v9, "e":Lorg/json/JSONException;
    const/16 v41, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadInfo;->setFormat(I)V

    .line 271
    invoke-static/range {p0 .. p1}, Lcom/tudou/service/download/DownloadUtils;->getDownloadData(Lcom/tudou/service/download/DownloadInfo;Lcom/tudou/service/download/IVideoDownloadCallBack;)Z

    move-result v41

    goto/16 :goto_2

    .line 276
    .end local v9    # "e":Lorg/json/JSONException;
    :cond_1e
    const/16 v41, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadInfo;->setFormat(I)V

    .line 277
    invoke-static/range {p0 .. p1}, Lcom/tudou/service/download/DownloadUtils;->getDownloadData(Lcom/tudou/service/download/DownloadInfo;Lcom/tudou/service/download/IVideoDownloadCallBack;)Z

    move-result v41

    goto/16 :goto_2

    .line 282
    :cond_1f
    sget-object v41, Lcom/tudou/service/download/DownloadInfo;->FORMAT_STRINGS:[Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/tudou/service/download/DownloadInfo;->getFormat()I

    move-result v42

    aget-object v41, v41, v42

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
    :try_end_14
    .catch Ljava/net/SocketTimeoutException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_4

    move-result v41

    if-nez v41, :cond_20

    .line 284
    :try_start_15
    sget-object v41, Lcom/tudou/service/download/DownloadInfo;->FORMAT_STRINGS:[Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/tudou/service/download/DownloadInfo;->getFormat()I

    move-result v42

    aget-object v41, v41, v42

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    .line 286
    const-string/jumbo v41, "segs"

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_9
    .catch Ljava/net/SocketTimeoutException; {:try_start_15 .. :try_end_15} :catch_1

    move-result-object v5

    .line 295
    :goto_f
    if-nez v5, :cond_1b

    .line 296
    :try_start_16
    sget-object v41, Lcom/tudou/service/download/DownloadInfo;->FORMAT_STRINGS:[Ljava/lang/String;

    const/16 v42, 0x2

    aget-object v41, v41, v42

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_21

    .line 297
    const/16 v41, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadInfo;->setFormat(I)V

    .line 298
    sget-object v41, Lcom/tudou/service/download/DownloadInfo;->FORMAT_STRINGS:[Ljava/lang/String;

    const/16 v42, 0x2

    aget-object v41, v41, v42

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    .line 299
    const-string/jumbo v41, "segs"

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    goto/16 :goto_d

    .line 287
    :catch_9
    move-exception v9

    .line 288
    .local v9, "e":Ljava/lang/Exception;
    const-string v41, "Download_Utils"

    const-string/jumbo v42, "\u4f4e\u7aef\u673a 3gphd\u683c\u5f0f\u6570\u636e\u8fd4\u56de\u4e3a\u7a7a"

    invoke-static/range {v41 .. v42}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 291
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_20
    const-string v41, "Download_Utils"

    const-string/jumbo v42, "\u4f4e\u7aef\u673a 3gphd\u683c\u5f0f\u6570\u636e\u8fd4\u56de\u4e3a\u7a7a"

    invoke-static/range {v41 .. v42}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 301
    :cond_21
    const/16 v41, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadInfo;->setExceptionId(I)V

    .line 302
    const/16 v41, 0x0

    goto/16 :goto_2

    .line 315
    .restart local v22    # "segCount":I
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/service/download/DownloadInfo;->getFormat()I

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_23

    .line 316
    const/16 v41, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadInfo;->setFormat(I)V

    .line 317
    invoke-static/range {p0 .. p1}, Lcom/tudou/service/download/DownloadUtils;->getDownloadData(Lcom/tudou/service/download/DownloadInfo;Lcom/tudou/service/download/IVideoDownloadCallBack;)Z

    move-result v41

    goto/16 :goto_2

    .line 319
    :cond_23
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tudou/service/download/DownloadInfo;->segCount:I

    .line 320
    const/16 v41, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadInfo;->setExceptionId(I)V

    .line 321
    const/16 v41, 0x0

    goto/16 :goto_2

    .line 323
    :cond_24
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tudou/service/download/DownloadInfo;->segCount:I

    .line 324
    const-string/jumbo v41, "youku"

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/tudou/service/download/DownloadInfo;->setFormto(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 365
    .restart local v13    # "formatStr":Ljava/lang/String;
    .restart local v15    # "i":I
    .restart local v28    # "segsSeconds":[I
    .restart local v29    # "segsSize":[J
    .restart local v30    # "segsUrl":[Ljava/lang/String;
    .restart local v31    # "segsfileId":[Ljava/lang/String;
    .restart local v32    # "size":J
    .restart local v35    # "temp":Lorg/json/JSONObject;
    :cond_25
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tudou/service/download/DownloadInfo;->segsSize:[J

    .line 366
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tudou/service/download/DownloadInfo;->segsUrl:[Ljava/lang/String;

    .line 367
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tudou/service/download/DownloadInfo;->segsSeconds:[I

    .line 368
    const-string/jumbo v41, "totalseconds"

    move-object/from16 v0, v21

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v42

    move-wide/from16 v0, v42

    double-to-int v0, v0

    move/from16 v41, v0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tudou/service/download/DownloadInfo;->seconds:I

    .line 369
    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/tudou/service/download/DownloadInfo;->size:J

    .line 370
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tudou/service/download/DownloadInfo;->segsfileId:[Ljava/lang/String;

    .line 371
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v42

    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/tudou/service/download/DownloadInfo;->getUrlTime:J

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/service/download/DownloadInfo;->imgUrl:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-static/range {v41 .. v41}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_26

    .line 377
    const-string v41, "item_img_16_9"

    move-object/from16 v0, v21

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tudou/service/download/DownloadInfo;->imgUrl:Ljava/lang/String;

    .line 378
    :cond_26
    const-string v41, "media_type"

    move-object/from16 v0, v21

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/tudou/service/download/DownloadInfo;->media_type:Ljava/lang/String;

    .line 379
    const-string v41, "album_info"

    move-object/from16 v0, v21

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_27

    .line 380
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/tudou/service/download/DownloadUtils;->getVideoInfo(Lcom/tudou/service/download/DownloadInfo;Lorg/json/JSONObject;)Z

    .line 381
    :cond_27
    const-string v41, "audiolang"

    move-object/from16 v0, v21

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_28

    .line 382
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/tudou/service/download/DownloadUtils;->getVideoLang(Lcom/tudou/service/download/DownloadInfo;Lorg/json/JSONObject;)Z

    .line 383
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-static/range {v41 .. v42}, Lcom/tudou/service/download/DownloadUtils;->getCacheDanmu(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/net/SocketTimeoutException; {:try_start_16 .. :try_end_16} :catch_1
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_4

    .line 401
    const/16 v41, 0x1

    goto/16 :goto_2

    .line 393
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "datas":Lorg/json/JSONArray;
    .end local v8    # "durl":Ljava/lang/String;
    .end local v13    # "formatStr":Ljava/lang/String;
    .end local v15    # "i":I
    .end local v19    # "json":Ljava/lang/String;
    .end local v20    # "o":Lorg/json/JSONObject;
    .end local v21    # "result":Lorg/json/JSONObject;
    .end local v22    # "segCount":I
    .end local v28    # "segsSeconds":[I
    .end local v29    # "segsSize":[J
    .end local v30    # "segsUrl":[Ljava/lang/String;
    .end local v31    # "segsfileId":[Ljava/lang/String;
    .end local v32    # "size":J
    .end local v34    # "status":Ljava/lang/String;
    .end local v35    # "temp":Lorg/json/JSONObject;
    .end local v37    # "type":Ljava/lang/String;
    .end local v39    # "url":Ljava/net/URL;
    .restart local v38    # "url":Ljava/net/URL;
    :catch_a
    move-exception v9

    goto/16 :goto_e

    .line 384
    :catch_b
    move-exception v9

    goto/16 :goto_4
.end method

.method public static getDownloadLanguage()I
    .locals 2

    .prologue
    .line 803
    const-string v0, "cachepreferlanguage"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tudou/android/Youku;->getPreferenceInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getFailReason(Lcom/tudou/service/download/DownloadInfo;Lorg/json/JSONObject;)V
    .locals 7
    .param p0, "info"    # Lcom/tudou/service/download/DownloadInfo;
    .param p1, "result"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x4

    const/16 v5, -0x67

    const/16 v4, -0x68

    const/16 v3, -0x69

    const/16 v2, -0x6a

    .line 413
    const-string v1, "code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 414
    .local v0, "errorCode":I
    const/16 v1, -0x65

    if-eq v0, v1, :cond_0

    if-eq v0, v5, :cond_0

    if-ne v0, v4, :cond_3

    .line 415
    :cond_0
    invoke-virtual {p0, v6}, Lcom/tudou/service/download/DownloadInfo;->setExceptionId(I)V

    .line 424
    :cond_1
    :goto_0
    const-string v1, "0002"

    iput-object v1, p0, Lcom/tudou/service/download/DownloadInfo;->dlerror:Ljava/lang/String;

    .line 425
    const/16 v1, -0x64

    if-ne v0, v1, :cond_6

    .line 426
    const-string v1, "100"

    iput-object v1, p0, Lcom/tudou/service/download/DownloadInfo;->errortype:Ljava/lang/String;

    .line 436
    :cond_2
    :goto_1
    return-void

    .line 416
    :cond_3
    if-ne v0, v2, :cond_4

    .line 417
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/tudou/service/download/DownloadInfo;->setExceptionId(I)V

    goto :goto_0

    .line 418
    :cond_4
    if-ne v0, v3, :cond_5

    .line 419
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/tudou/service/download/DownloadInfo;->setExceptionId(I)V

    goto :goto_0

    .line 420
    :cond_5
    const/16 v1, -0x70

    if-ne v0, v1, :cond_1

    .line 421
    invoke-virtual {p0, v6}, Lcom/tudou/service/download/DownloadInfo;->setExceptionId(I)V

    goto :goto_0

    .line 427
    :cond_6
    if-ne v0, v5, :cond_7

    .line 428
    const-string v1, "103"

    iput-object v1, p0, Lcom/tudou/service/download/DownloadInfo;->errortype:Ljava/lang/String;

    goto :goto_1

    .line 429
    :cond_7
    if-ne v0, v4, :cond_8

    .line 430
    const-string v1, "104"

    iput-object v1, p0, Lcom/tudou/service/download/DownloadInfo;->errortype:Ljava/lang/String;

    goto :goto_1

    .line 431
    :cond_8
    if-ne v0, v3, :cond_9

    .line 432
    const-string v1, "105"

    iput-object v1, p0, Lcom/tudou/service/download/DownloadInfo;->errortype:Ljava/lang/String;

    goto :goto_1

    .line 433
    :cond_9
    if-ne v0, v2, :cond_2

    .line 434
    const-string v1, "106"

    iput-object v1, p0, Lcom/tudou/service/download/DownloadInfo;->errortype:Ljava/lang/String;

    goto :goto_1
.end method

.method public static getLocation(Lcom/tudou/service/download/DownloadInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "info"    # Lcom/tudou/service/download/DownloadInfo;
    .param p1, "segUrl"    # Ljava/lang/String;

    .prologue
    .line 68
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 69
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 70
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 71
    const-string v3, "User-Agent"

    sget-object v4, Lcom/tudou/android/Youku;->User_Agent:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v3, "HEAD"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 73
    const-string v3, "Location"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 78
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "url":Ljava/net/URL;
    :goto_0
    return-object v3

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "0012"

    iput-object v3, p0, Lcom/tudou/service/download/DownloadInfo;->dlerror:Ljava/lang/String;

    .line 76
    const-string v3, "Download_Utils"

    const-string v4, "DownloadUtils#getLocation()"

    invoke-static {v3, v4, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getPreference(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 820
    const-string v2, "DownloadLogin"

    invoke-static {}, Lcom/baseproject/utils/UIUtils;->hasGingerbread()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    :goto_0
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 824
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1

    .line 820
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getProgress(Lcom/tudou/service/download/DownloadInfo;)Ljava/lang/String;
    .locals 4
    .param p0, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    .line 775
    sget-object v0, Lcom/tudou/service/download/DownloadUtils;->df:Ljava/text/DecimalFormat;

    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadInfo;->getProgress()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoInfo(Lcom/tudou/service/download/DownloadInfo;Lorg/json/JSONObject;)Z
    .locals 4
    .param p0, "info"    # Lcom/tudou/service/download/DownloadInfo;
    .param p1, "obj"    # Lorg/json/JSONObject;

    .prologue
    const/4 v3, 0x1

    .line 497
    :try_start_0
    const-string v1, "album_info"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 498
    const-string/jumbo v1, "title_new"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/service/download/DownloadInfo;->showname:Ljava/lang/String;

    .line 499
    const-string/jumbo v1, "videoseq"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tudou/service/download/DownloadInfo;->show_videoseq:I

    .line 500
    const-string/jumbo v1, "videostage"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tudou/service/download/DownloadInfo;->show_videostage:I

    .line 501
    const-string/jumbo v1, "total"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/tudou/service/download/DownloadInfo;->showepisode_total:I

    .line 502
    const-string v1, "license_num"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/service/download/DownloadInfo;->license_num:Ljava/lang/String;

    .line 503
    const-string/jumbo v1, "register_num"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/service/download/DownloadInfo;->register_num:Ljava/lang/String;

    .line 504
    iget v1, p0, Lcom/tudou/service/download/DownloadInfo;->showepisode_total:I

    if-lt v1, v3, :cond_1

    .line 505
    iget-object v1, p0, Lcom/tudou/service/download/DownloadInfo;->subtitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 506
    const-string/jumbo v1, "subtitle_new"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/service/download/DownloadInfo;->subtitle:Ljava/lang/String;

    .line 507
    :cond_0
    const-string v1, "cat"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/service/download/DownloadInfo;->cats:Ljava/lang/String;

    .line 508
    iget-object v1, p0, Lcom/tudou/service/download/DownloadInfo;->cats:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tudou/service/download/DownloadInfo;->cats:Ljava/lang/String;

    const-string/jumbo v2, "\u7535\u5f71"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 509
    iget-boolean v1, p0, Lcom/tudou/service/download/DownloadInfo;->istrailer:Z

    if-nez v1, :cond_1

    .line 510
    const-string v1, "albumid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/service/download/DownloadInfo;->showid:Ljava/lang/String;

    .line 536
    :cond_1
    const-string v1, "img"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/service/download/DownloadInfo;->imgThUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    :goto_0
    return v3

    .line 538
    :catch_0
    move-exception v0

    .line 539
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Download_Utils"

    const-string v2, "DownloadUtils.getVideoInfo()"

    invoke-static {v1, v2, v0}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 540
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/tudou/service/download/DownloadInfo;->setExceptionId(I)V

    goto :goto_0
.end method

.method public static getVideoLang(Lcom/tudou/service/download/DownloadInfo;Lorg/json/JSONObject;)Z
    .locals 9
    .param p0, "info"    # Lcom/tudou/service/download/DownloadInfo;
    .param p1, "obj"    # Lorg/json/JSONObject;

    .prologue
    const/4 v8, 0x1

    .line 475
    :try_start_0
    const-string v6, "audiolang"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 476
    .local v0, "arr":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 477
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 478
    .local v1, "b":Lorg/json/JSONObject;
    const-string v6, "isplay"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "isplay"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 479
    const-string v6, "langcode"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 480
    .local v4, "langcode":Ljava/lang/String;
    const-string v6, "lang"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 481
    .local v5, "language":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .end local v4    # "langcode":Ljava/lang/String;
    :goto_1
    iput-object v4, p0, Lcom/tudou/service/download/DownloadInfo;->langcode:Ljava/lang/String;

    .line 483
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .end local v5    # "language":Ljava/lang/String;
    :goto_2
    iput-object v5, p0, Lcom/tudou/service/download/DownloadInfo;->language:Ljava/lang/String;

    .line 476
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 481
    .restart local v4    # "langcode":Ljava/lang/String;
    .restart local v5    # "language":Ljava/lang/String;
    :cond_1
    const-string v4, ""

    goto :goto_1

    .line 483
    .end local v4    # "langcode":Ljava/lang/String;
    :cond_2
    const-string v5, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 488
    .end local v0    # "arr":Lorg/json/JSONArray;
    .end local v1    # "b":Lorg/json/JSONObject;
    .end local v3    # "i":I
    .end local v5    # "language":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 489
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "Download_Utils"

    const-string v7, "DownloadUtils.getVideoLang()"

    invoke-static {v6, v7, v2}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 490
    const/4 v6, 0x7

    invoke-virtual {p0, v6}, Lcom/tudou/service/download/DownloadInfo;->setExceptionId(I)V

    .line 491
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    return v8
.end method

.method public static hasDanmu(Ljava/lang/String;)Z
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 931
    const/4 v1, 0x0

    .line 932
    .local v1, "ret":Z
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "danmu"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 933
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 934
    const/4 v1, 0x1

    .line 935
    :cond_0
    return v1
.end method

.method private static isSuccessCache(Lcom/tudou/service/download/DownloadInfo;Lcom/tudou/service/download/IVideoDownloadCallBack;Ljava/lang/String;)Z
    .locals 5
    .param p0, "info"    # Lcom/tudou/service/download/DownloadInfo;
    .param p1, "dcallback"    # Lcom/tudou/service/download/IVideoDownloadCallBack;
    .param p2, "json"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 449
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 450
    .local v1, "result":Lorg/json/JSONObject;
    const-string/jumbo v4, "status"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 451
    .local v2, "status":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "failed"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 452
    if-eqz p1, :cond_0

    .line 453
    invoke-interface {p1}, Lcom/tudou/service/download/IVideoDownloadCallBack;->onFailed()V

    .line 454
    :cond_0
    invoke-static {p0, v1}, Lcom/tudou/service/download/DownloadUtils;->getFailReason(Lcom/tudou/service/download/DownloadInfo;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    const/4 v3, 0x0

    .line 460
    .end local v1    # "result":Lorg/json/JSONObject;
    .end local v2    # "status":Ljava/lang/String;
    :cond_1
    :goto_0
    return v3

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Lorg/json/JSONException;
    goto :goto_0
.end method

.method public static makeCacheDanmuFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "cacheDanmu"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 899
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 927
    :cond_0
    :goto_0
    return v5

    .line 901
    :cond_1
    const/4 v3, 0x0

    .line 903
    .local v3, "w":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "danmu"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 904
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 905
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 906
    .local v0, "d":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 907
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 909
    .end local v0    # "d":Ljava/io/File;
    :cond_2
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 911
    .end local v3    # "w":Ljava/io/BufferedWriter;
    .local v4, "w":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v4, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 920
    if-eqz v4, :cond_3

    .line 921
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 927
    :cond_3
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 923
    :catch_0
    move-exception v1

    .line 924
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "Download_Utils"

    invoke-static {v5, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 912
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "f":Ljava/io/File;
    .end local v4    # "w":Ljava/io/BufferedWriter;
    .restart local v3    # "w":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v1

    .line 913
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v6, "Download_Utils"

    invoke-static {v6, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 920
    if-eqz v3, :cond_0

    .line 921
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 923
    :catch_2
    move-exception v1

    .line 924
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "Download_Utils"

    invoke-static {v6, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 915
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 916
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    const-string v6, "Download_Utils"

    invoke-static {v6, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 920
    if-eqz v3, :cond_0

    .line 921
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 923
    :catch_4
    move-exception v1

    .line 924
    const-string v6, "Download_Utils"

    invoke-static {v6, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 919
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 920
    :goto_4
    if-eqz v3, :cond_4

    .line 921
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 925
    :cond_4
    :goto_5
    throw v5

    .line 923
    :catch_5
    move-exception v1

    .line 924
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v6, "Download_Utils"

    invoke-static {v6, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 919
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "w":Ljava/io/BufferedWriter;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v4    # "w":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "w":Ljava/io/BufferedWriter;
    .restart local v3    # "w":Ljava/io/BufferedWriter;
    goto :goto_4

    .line 915
    .end local v3    # "w":Ljava/io/BufferedWriter;
    .restart local v4    # "w":Ljava/io/BufferedWriter;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4    # "w":Ljava/io/BufferedWriter;
    .restart local v3    # "w":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 912
    .end local v3    # "w":Ljava/io/BufferedWriter;
    .restart local v4    # "w":Ljava/io/BufferedWriter;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4    # "w":Ljava/io/BufferedWriter;
    .restart local v3    # "w":Ljava/io/BufferedWriter;
    goto :goto_2
.end method

.method public static makeDownloadInfoFile(Lcom/tudou/service/download/DownloadInfo;)Z
    .locals 9
    .param p0, "info"    # Lcom/tudou/service/download/DownloadInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 632
    if-nez p0, :cond_1

    .line 662
    :cond_0
    :goto_0
    return v5

    .line 634
    :cond_1
    const/4 v3, 0x0

    .line 636
    .local v3, "w":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/tudou/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "info"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 637
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 638
    new-instance v0, Ljava/io/File;

    iget-object v7, p0, Lcom/tudou/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 639
    .local v0, "d":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 640
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 642
    .end local v0    # "d":Ljava/io/File;
    :cond_2
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    .end local v3    # "w":Ljava/io/BufferedWriter;
    .local v4, "w":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {p0}, Lcom/tudou/service/download/DownloadInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 655
    if-eqz v4, :cond_3

    .line 656
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_1
    move v5, v6

    .line 662
    goto :goto_0

    .line 658
    :catch_0
    move-exception v1

    .line 659
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "Download_Utils"

    invoke-static {v5, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 645
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "f":Ljava/io/File;
    .end local v4    # "w":Ljava/io/BufferedWriter;
    .restart local v3    # "w":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v1

    .line 646
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v6, "Download_Utils"

    invoke-static {v6, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 647
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/tudou/service/download/DownloadInfo;->setExceptionId(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 655
    if-eqz v3, :cond_0

    .line 656
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 658
    :catch_2
    move-exception v1

    .line 659
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "Download_Utils"

    invoke-static {v6, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 649
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 650
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    const-string v6, "Download_Utils"

    invoke-static {v6, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 651
    const/16 v6, 0x8

    invoke-virtual {p0, v6}, Lcom/tudou/service/download/DownloadInfo;->setExceptionId(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 655
    if-eqz v3, :cond_0

    .line 656
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 658
    :catch_4
    move-exception v1

    .line 659
    const-string v6, "Download_Utils"

    invoke-static {v6, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 654
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 655
    :goto_4
    if-eqz v3, :cond_4

    .line 656
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 660
    :cond_4
    :goto_5
    throw v5

    .line 658
    :catch_5
    move-exception v1

    .line 659
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v6, "Download_Utils"

    invoke-static {v6, v1}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 654
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "w":Ljava/io/BufferedWriter;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v4    # "w":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "w":Ljava/io/BufferedWriter;
    .restart local v3    # "w":Ljava/io/BufferedWriter;
    goto :goto_4

    .line 649
    .end local v3    # "w":Ljava/io/BufferedWriter;
    .restart local v4    # "w":Ljava/io/BufferedWriter;
    :catch_6
    move-exception v1

    move-object v3, v4

    .end local v4    # "w":Ljava/io/BufferedWriter;
    .restart local v3    # "w":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 645
    .end local v3    # "w":Ljava/io/BufferedWriter;
    .restart local v4    # "w":Ljava/io/BufferedWriter;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4    # "w":Ljava/io/BufferedWriter;
    .restart local v3    # "w":Ljava/io/BufferedWriter;
    goto :goto_2
.end method

.method public static makeM3U8File(Lcom/tudou/service/download/DownloadInfo;Z)V
    .locals 10
    .param p0, "info"    # Lcom/tudou/service/download/DownloadInfo;
    .param p1, "ifNeedUpdate"    # Z

    .prologue
    .line 711
    if-nez p0, :cond_1

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 722
    :cond_1
    iget-object v7, p0, Lcom/tudou/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 725
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Lcom/tudou/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 726
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 729
    new-instance v3, Ljava/io/File;

    .end local v3    # "f":Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/tudou/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "youku.m3u8"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 730
    .restart local v3    # "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 731
    if-eqz p1, :cond_0

    .line 732
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 736
    :cond_2
    const/4 v0, 0x0

    .line 738
    .local v0, "bw":Ljava/io/BufferedWriter;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 739
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 741
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_1
    const-string v7, "#PLSEXTM3U\r\n"

    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 742
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#EXT-X-TARGETDURATION:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/tudou/service/download/DownloadInfo;->seconds:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 743
    const-string v7, "#EXT-X-VERSION:2\r\n"

    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 744
    const-string v7, "#EXT-X-DISCONTINUITY\r\n"

    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 745
    iget-object v6, p0, Lcom/tudou/service/download/DownloadInfo;->segsSeconds:[I

    .line 746
    .local v6, "s":[I
    const/4 v4, 0x0

    .local v4, "i":I
    array-length v5, v6

    .local v5, "n":I
    :goto_1
    if-ge v4, v5, :cond_3

    .line 747
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#EXTINF:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, v6, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 748
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/tudou/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/tudou/service/download/DownloadInfo;->FORMAT_POSTFIX:[Ljava/lang/String;

    iget v9, p0, Lcom/tudou/service/download/DownloadInfo;->format:I

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 746
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 751
    :cond_3
    const-string v7, "#EXT-X-ENDLIST\r\n"

    invoke-virtual {v1, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 756
    if-eqz v1, :cond_4

    .line 757
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    move-object v0, v1

    .line 759
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto/16 :goto_0

    .line 758
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v7

    move-object v0, v1

    .line 760
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto/16 :goto_0

    .line 752
    .end local v4    # "i":I
    .end local v5    # "n":I
    .end local v6    # "s":[I
    :catch_1
    move-exception v2

    .line 753
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v7, "Download_Utils"

    const-string v8, "makeM3U8File fail"

    invoke-static {v7, v8, v2}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 756
    if-eqz v0, :cond_0

    .line 757
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 758
    :catch_2
    move-exception v7

    goto/16 :goto_0

    .line 755
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 756
    :goto_3
    if-eqz v0, :cond_5

    .line 757
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 759
    :cond_5
    :goto_4
    throw v7

    .line 758
    :catch_3
    move-exception v8

    goto :goto_4

    .line 755
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 752
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_2
.end method

.method public static savePreference(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 811
    const-string v2, "DownloadLogin"

    invoke-static {}, Lcom/baseproject/utils/UIUtils;->hasGingerbread()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    :goto_0
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 815
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 816
    return-void

    .line 811
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setDownloadFormat(I)V
    .locals 1
    .param p0, "format"    # I

    .prologue
    .line 799
    const-string v0, "definition"

    invoke-static {v0, p0}, Lcom/tudou/android/Youku;->saveCPreference(Ljava/lang/String;I)V

    .line 800
    return-void
.end method

.method public static setDownloadLanguage(I)V
    .locals 1
    .param p0, "language"    # I

    .prologue
    .line 807
    const-string v0, "cachepreferlanguage"

    invoke-static {v0, p0}, Lcom/tudou/android/Youku;->saveCPreference(Ljava/lang/String;I)V

    .line 808
    return-void
.end method
