.class final Lcom/tudou/detail/Test$3;
.super Ljava/lang/Thread;
.source "Test.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/Test;->uploadCommentImage(Ljava/io/File;Ljava/lang/String;Lcom/tudou/detail/Test$OnUploadCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$RequestURL:Ljava/lang/String;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$l:Lcom/tudou/detail/Test$OnUploadCompleteListener;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/io/File;Lcom/tudou/detail/Test$OnUploadCompleteListener;)V
    .locals 0

    .prologue
    .line 572
    iput-object p1, p0, Lcom/tudou/detail/Test$3;->val$RequestURL:Ljava/lang/String;

    iput-object p2, p0, Lcom/tudou/detail/Test$3;->val$file:Ljava/io/File;

    iput-object p3, p0, Lcom/tudou/detail/Test$3;->val$l:Lcom/tudou/detail/Test$OnUploadCompleteListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 29

    .prologue
    .line 575
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 576
    .local v2, "BOUNDARY":Ljava/lang/String;
    const-string v5, "--"

    .local v5, "PREFIX":Ljava/lang/String;
    const-string v4, "\r\n"

    .line 577
    .local v4, "LINE_END":Ljava/lang/String;
    const-string v3, "multipart/form-data"

    .line 578
    .local v3, "CONTENT_TYPE":Ljava/lang/String;
    const/16 v23, 0x0

    .line 579
    .local v23, "success":Z
    const/4 v12, 0x0

    .line 581
    .local v12, "imgUrl":Ljava/lang/String;
    :try_start_0
    new-instance v24, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/detail/Test$3;->val$RequestURL:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 582
    .local v24, "url":Ljava/net/URL;
    invoke-virtual/range {v24 .. v24}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    check-cast v8, Ljava/net/HttpURLConnection;

    .line 583
    .local v8, "conn":Ljava/net/HttpURLConnection;
    sget v25, Lcom/tudou/android/Youku;->HTTP_READ_TIMEOUT_WIFI:I

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 584
    sget v25, Lcom/tudou/android/Youku;->HTTP_CONNECT_TIMEOUT_WIFI:I

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 585
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 586
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 587
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 588
    const-string v25, "POST"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 589
    const-string v25, "Charset"

    const-string v26, "UTF-8"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v8, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const-string v25, "connection"

    const-string v26, "keep-alive"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v8, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const-string v25, "Content-Type"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ";boundary="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v8, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/detail/Test$3;->val$file:Ljava/io/File;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    .line 594
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v17

    .line 595
    .local v17, "outputSteam":Ljava/io/OutputStream;
    new-instance v9, Ljava/io/DataOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 596
    .local v9, "dos":Ljava/io/DataOutputStream;
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 597
    .local v20, "sb":Ljava/lang/StringBuffer;
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 598
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 599
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 600
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Content-Disposition: form-data; name=\"file\"; filename=\""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/detail/Test$3;->val$file:Ljava/io/File;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 601
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Content-Type: image/png"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 602
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 603
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 604
    new-instance v14, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/detail/Test$3;->val$file:Ljava/io/File;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 605
    .local v14, "is":Ljava/io/InputStream;
    const/16 v25, 0x400

    move/from16 v0, v25

    new-array v6, v0, [B

    .line 606
    .local v6, "bytes":[B
    const/16 v16, 0x0

    .line 607
    .local v16, "len":I
    :goto_0
    invoke-virtual {v14, v6}, Ljava/io/InputStream;->read([B)I

    move-result v16

    const/16 v25, -0x1

    move/from16 v0, v16

    move/from16 v1, v25

    if-eq v0, v1, :cond_1

    .line 608
    const/16 v25, 0x0

    move/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v9, v6, v0, v1}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 635
    .end local v6    # "bytes":[B
    .end local v8    # "conn":Ljava/net/HttpURLConnection;
    .end local v9    # "dos":Ljava/io/DataOutputStream;
    .end local v14    # "is":Ljava/io/InputStream;
    .end local v16    # "len":I
    .end local v17    # "outputSteam":Ljava/io/OutputStream;
    .end local v20    # "sb":Ljava/lang/StringBuffer;
    .end local v24    # "url":Ljava/net/URL;
    :catch_0
    move-exception v10

    .line 636
    .local v10, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v25, Lcom/tudou/ui/activity/DetailActivity;->TAG_EXCEPTION:Ljava/lang/String;

    const-string v26, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v10}, Lcom/baseproject/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 638
    invoke-static {}, Lcom/tudou/detail/Test;->access$000()Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "uploadCommentImage: success = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", imgUrl = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/detail/Test$3;->val$l:Lcom/tudou/detail/Test$OnUploadCompleteListener;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/detail/Test$3;->val$l:Lcom/tudou/detail/Test$OnUploadCompleteListener;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-interface {v0, v1, v12}, Lcom/tudou/detail/Test$OnUploadCompleteListener;->onComplete(ZLjava/lang/String;)V

    .line 643
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-void

    .line 610
    .restart local v6    # "bytes":[B
    .restart local v8    # "conn":Ljava/net/HttpURLConnection;
    .restart local v9    # "dos":Ljava/io/DataOutputStream;
    .restart local v14    # "is":Ljava/io/InputStream;
    .restart local v16    # "len":I
    .restart local v17    # "outputSteam":Ljava/io/OutputStream;
    .restart local v20    # "sb":Ljava/lang/StringBuffer;
    .restart local v24    # "url":Ljava/net/URL;
    :cond_1
    :try_start_2
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 611
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 612
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    .line 613
    .local v11, "end_data":[B
    invoke-virtual {v9, v11}, Ljava/io/DataOutputStream;->write([B)V

    .line 614
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->flush()V

    .line 615
    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    .line 617
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v18

    .line 618
    .local v18, "res":I
    invoke-static {}, Lcom/tudou/detail/Test;->access$000()Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "uploadCommentImage getResponseCode:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    const/16 v25, 0xc8

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    .line 620
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    .line 621
    .local v13, "input":Ljava/io/InputStream;
    new-instance v21, Ljava/lang/StringBuffer;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    .line 623
    .local v21, "sb1":Ljava/lang/StringBuffer;
    :goto_2
    invoke-virtual {v13}, Ljava/io/InputStream;->read()I

    move-result v22

    .local v22, "ss":I
    const/16 v25, -0x1

    move/from16 v0, v22

    move/from16 v1, v25

    if-eq v0, v1, :cond_3

    .line 624
    move/from16 v0, v22

    int-to-char v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 638
    .end local v6    # "bytes":[B
    .end local v8    # "conn":Ljava/net/HttpURLConnection;
    .end local v9    # "dos":Ljava/io/DataOutputStream;
    .end local v11    # "end_data":[B
    .end local v13    # "input":Ljava/io/InputStream;
    .end local v14    # "is":Ljava/io/InputStream;
    .end local v16    # "len":I
    .end local v17    # "outputSteam":Ljava/io/OutputStream;
    .end local v18    # "res":I
    .end local v20    # "sb":Ljava/lang/StringBuffer;
    .end local v21    # "sb1":Ljava/lang/StringBuffer;
    .end local v22    # "ss":I
    .end local v24    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v25

    invoke-static {}, Lcom/tudou/detail/Test;->access$000()Ljava/lang/String;

    move-result-object v26

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "uploadCommentImage: success = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", imgUrl = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/detail/Test$3;->val$l:Lcom/tudou/detail/Test$OnUploadCompleteListener;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/detail/Test$3;->val$l:Lcom/tudou/detail/Test$OnUploadCompleteListener;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-interface {v0, v1, v12}, Lcom/tudou/detail/Test$OnUploadCompleteListener;->onComplete(ZLjava/lang/String;)V

    :cond_2
    throw v25

    .line 626
    .restart local v6    # "bytes":[B
    .restart local v8    # "conn":Ljava/net/HttpURLConnection;
    .restart local v9    # "dos":Ljava/io/DataOutputStream;
    .restart local v11    # "end_data":[B
    .restart local v13    # "input":Ljava/io/InputStream;
    .restart local v14    # "is":Ljava/io/InputStream;
    .restart local v16    # "len":I
    .restart local v17    # "outputSteam":Ljava/io/OutputStream;
    .restart local v18    # "res":I
    .restart local v20    # "sb":Ljava/lang/StringBuffer;
    .restart local v21    # "sb1":Ljava/lang/StringBuffer;
    .restart local v22    # "ss":I
    .restart local v24    # "url":Ljava/net/URL;
    :cond_3
    :try_start_3
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    .line 627
    .local v19, "result":Ljava/lang/String;
    new-instance v15, Lorg/json/JSONObject;

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 628
    .local v15, "json":Lorg/json/JSONObject;
    const-string v25, "code"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 629
    .local v7, "code":I
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v7, v0, :cond_4

    .line 630
    const/16 v23, 0x1

    .line 631
    const-string v25, "data"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v12

    .line 638
    .end local v6    # "bytes":[B
    .end local v7    # "code":I
    .end local v9    # "dos":Ljava/io/DataOutputStream;
    .end local v11    # "end_data":[B
    .end local v13    # "input":Ljava/io/InputStream;
    .end local v14    # "is":Ljava/io/InputStream;
    .end local v15    # "json":Lorg/json/JSONObject;
    .end local v16    # "len":I
    .end local v17    # "outputSteam":Ljava/io/OutputStream;
    .end local v18    # "res":I
    .end local v19    # "result":Ljava/lang/String;
    .end local v20    # "sb":Ljava/lang/StringBuffer;
    .end local v21    # "sb1":Ljava/lang/StringBuffer;
    .end local v22    # "ss":I
    :cond_4
    invoke-static {}, Lcom/tudou/detail/Test;->access$000()Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "uploadCommentImage: success = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", imgUrl = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/baseproject/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/detail/Test$3;->val$l:Lcom/tudou/detail/Test$OnUploadCompleteListener;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/detail/Test$3;->val$l:Lcom/tudou/detail/Test$OnUploadCompleteListener;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-interface {v0, v1, v12}, Lcom/tudou/detail/Test$OnUploadCompleteListener;->onComplete(ZLjava/lang/String;)V

    goto/16 :goto_1
.end method
