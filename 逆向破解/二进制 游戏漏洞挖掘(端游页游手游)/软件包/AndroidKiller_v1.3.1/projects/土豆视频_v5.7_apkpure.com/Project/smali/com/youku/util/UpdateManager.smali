.class public final Lcom/youku/util/UpdateManager;
.super Ljava/lang/Object;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/util/UpdateManager$UpdateType;
    }
.end annotation


# static fields
.field private static final DOWN_OVER:I = 0x2

.field private static final DOWN_UPDATE:I = 0x1


# instance fields
.field private activity:Landroid/app/Activity;

.field private apk:Ljava/io/File;

.field private apkUrl:Ljava/lang/String;

.field private cancelable:Z

.field private content:Ljava/lang/String;

.field private isCancelDownload:Z

.field private mHandler:Landroid/os/Handler;

.field private mMaxSize:J

.field private progress:I

.field private progressDialog:Lcom/youku/widget/TudouProDialog;

.field private type:Lcom/youku/util/UpdateManager$UpdateType;

.field private updateMsg:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/util/UpdateManager;->cancelable:Z

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/util/UpdateManager;->isCancelDownload:Z

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/youku/util/UpdateManager;->progressDialog:Lcom/youku/widget/TudouProDialog;

    .line 58
    new-instance v0, Lcom/youku/util/UpdateManager$1;

    invoke-direct {v0, p0}, Lcom/youku/util/UpdateManager$1;-><init>(Lcom/youku/util/UpdateManager;)V

    iput-object v0, p0, Lcom/youku/util/UpdateManager;->mHandler:Landroid/os/Handler;

    .line 209
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/youku/util/UpdateManager;->mMaxSize:J

    .line 80
    iput-object p1, p0, Lcom/youku/util/UpdateManager;->activity:Landroid/app/Activity;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/youku/util/UpdateManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/util/UpdateManager;

    .prologue
    .line 35
    iget v0, p0, Lcom/youku/util/UpdateManager;->progress:I

    return v0
.end method

.method static synthetic access$100(Lcom/youku/util/UpdateManager;)Lcom/youku/widget/TudouProDialog;
    .locals 1
    .param p0, "x0"    # Lcom/youku/util/UpdateManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/youku/util/UpdateManager;->progressDialog:Lcom/youku/widget/TudouProDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/util/UpdateManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/util/UpdateManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/youku/util/UpdateManager;->version:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/util/UpdateManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/youku/util/UpdateManager;

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/youku/util/UpdateManager;->mMaxSize:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/youku/util/UpdateManager;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/youku/util/UpdateManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/youku/util/UpdateManager;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/youku/util/UpdateManager;)Lcom/youku/util/UpdateManager$UpdateType;
    .locals 1
    .param p0, "x0"    # Lcom/youku/util/UpdateManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/youku/util/UpdateManager;->type:Lcom/youku/util/UpdateManager$UpdateType;

    return-object v0
.end method

.method static synthetic access$600(Lcom/youku/util/UpdateManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/util/UpdateManager;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/youku/util/UpdateManager;->showProgressDialog(Z)V

    return-void
.end method

.method static synthetic access$702(Lcom/youku/util/UpdateManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/util/UpdateManager;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/youku/util/UpdateManager;->isCancelDownload:Z

    return p1
.end method

.method static synthetic access$800(Lcom/youku/util/UpdateManager;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/youku/util/UpdateManager;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/youku/util/UpdateManager;->apk:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$900(Lcom/youku/util/UpdateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/util/UpdateManager;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/youku/util/UpdateManager;->downloadApk()V

    return-void
.end method

.method private downloadApk()V
    .locals 14

    .prologue
    .line 213
    invoke-static {}, Lcom/tudou/ui/fragment/MoreFragment;->createNewApkFile()Ljava/io/File;

    move-result-object v12

    iput-object v12, p0, Lcom/youku/util/UpdateManager;->apk:Ljava/io/File;

    .line 221
    const/4 v6, 0x0

    .line 222
    .local v6, "fos":Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 223
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    const/4 v8, 0x0

    .line 225
    .local v8, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v11, Ljava/net/URL;

    iget-object v12, p0, Lcom/youku/util/UpdateManager;->apkUrl:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 226
    .local v11, "url":Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    .line 227
    .local v3, "conn":Ljava/net/HttpURLConnection;
    const/16 v12, 0x7530

    invoke-virtual {v3, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 228
    const/16 v12, 0x7530

    invoke-virtual {v3, v12}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 229
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->connect()V

    .line 230
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v10

    .line 231
    .local v10, "length":I
    int-to-long v12, v10

    iput-wide v12, p0, Lcom/youku/util/UpdateManager;->mMaxSize:J

    .line 232
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 233
    new-instance v7, Ljava/io/FileOutputStream;

    iget-object v12, p0, Lcom/youku/util/UpdateManager;->apk:Ljava/io/File;

    invoke-direct {v7, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v7, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 236
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    const/4 v4, 0x0

    .line 237
    .local v4, "count":I
    const/16 v12, 0x400

    :try_start_2
    new-array v2, v12, [B

    .line 238
    .local v2, "buf":[B
    const/4 v9, 0x0

    .line 239
    .local v9, "len":I
    :goto_0
    iget-boolean v12, p0, Lcom/youku/util/UpdateManager;->isCancelDownload:Z

    if-nez v12, :cond_3

    invoke-virtual {v8, v2}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v12, -0x1

    if-eq v9, v12, :cond_3

    .line 240
    const/4 v12, 0x0

    invoke-virtual {v1, v2, v12, v9}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 241
    add-int/2addr v4, v9

    .line 242
    int-to-float v12, v4

    int-to-float v13, v10

    div-float/2addr v12, v13

    const/high16 v13, 0x42c80000    # 100.0f

    mul-float/2addr v12, v13

    float-to-int v12, v12

    iput v12, p0, Lcom/youku/util/UpdateManager;->progress:I

    .line 244
    iget-object v12, p0, Lcom/youku/util/UpdateManager;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 252
    .end local v2    # "buf":[B
    .end local v9    # "len":I
    :catch_0
    move-exception v5

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    move-object v6, v7

    .line 253
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "count":I
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "length":I
    .end local v11    # "url":Ljava/net/URL;
    .local v5, "e":Ljava/net/MalformedURLException;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_3
    const-string v12, "downloadApk().run()"

    invoke-static {v12, v5}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 254
    const v12, 0x7f0d01ec

    invoke-static {v12}, Lcom/youku/util/Util;->showTips(I)V

    .line 255
    iget-object v12, p0, Lcom/youku/util/UpdateManager;->activity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->finish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 264
    if-eqz v0, :cond_0

    .line 265
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 266
    :cond_0
    if-eqz v6, :cond_1

    .line 267
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 268
    :cond_1
    if-eqz v8, :cond_2

    .line 269
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 274
    .end local v5    # "e":Ljava/net/MalformedURLException;
    :cond_2
    :goto_2
    return-void

    .line 246
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "buf":[B
    .restart local v3    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "count":I
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "len":I
    .restart local v10    # "length":I
    .restart local v11    # "url":Ljava/net/URL;
    :cond_3
    :try_start_5
    iget-boolean v12, p0, Lcom/youku/util/UpdateManager;->isCancelDownload:Z

    if-eqz v12, :cond_8

    iget-object v12, p0, Lcom/youku/util/UpdateManager;->apk:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 247
    iget-object v12, p0, Lcom/youku/util/UpdateManager;->apk:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 264
    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    .line 265
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 266
    :cond_5
    if-eqz v7, :cond_6

    .line 267
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 268
    :cond_6
    if-eqz v8, :cond_7

    .line 269
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9

    :cond_7
    :goto_4
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    move-object v6, v7

    .line 274
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 248
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :cond_8
    if-lt v4, v10, :cond_4

    .line 250
    :try_start_7
    iget-object v12, p0, Lcom/youku/util/UpdateManager;->mHandler:Landroid/os/Handler;

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_3

    .line 257
    .end local v2    # "buf":[B
    .end local v9    # "len":I
    :catch_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    move-object v6, v7

    .line 258
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "count":I
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "length":I
    .end local v11    # "url":Ljava/net/URL;
    .local v5, "e":Ljava/io/IOException;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :goto_5
    :try_start_8
    const-string v12, "downloadApk().run()"

    invoke-static {v12, v5}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 259
    const v12, 0x7f0d01ec

    invoke-static {v12}, Lcom/youku/util/Util;->showTips(I)V

    .line 260
    iget-object v12, p0, Lcom/youku/util/UpdateManager;->activity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->finish()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 264
    if-eqz v0, :cond_9

    .line 265
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 266
    :cond_9
    if-eqz v6, :cond_a

    .line 267
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 268
    :cond_a
    if-eqz v8, :cond_2

    .line 269
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_2

    .line 270
    :catch_2
    move-exception v12

    goto :goto_2

    .line 263
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 264
    :goto_6
    if-eqz v0, :cond_b

    .line 265
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 266
    :cond_b
    if-eqz v6, :cond_c

    .line 267
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 268
    :cond_c
    if-eqz v8, :cond_d

    .line 269
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 271
    :cond_d
    :goto_7
    throw v12

    .line 270
    :catch_3
    move-exception v13

    goto :goto_7

    .line 263
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "conn":Ljava/net/HttpURLConnection;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "length":I
    .restart local v11    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v12

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_6

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v4    # "count":I
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v12

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 257
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v4    # "count":I
    .end local v10    # "length":I
    .end local v11    # "url":Ljava/net/URL;
    :catch_4
    move-exception v5

    goto :goto_5

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "conn":Ljava/net/HttpURLConnection;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "length":I
    .restart local v11    # "url":Ljava/net/URL;
    :catch_5
    move-exception v5

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 270
    .end local v3    # "conn":Ljava/net/HttpURLConnection;
    .end local v10    # "length":I
    .end local v11    # "url":Ljava/net/URL;
    .local v5, "e":Ljava/net/MalformedURLException;
    :catch_6
    move-exception v12

    goto :goto_2

    .line 252
    .end local v5    # "e":Ljava/net/MalformedURLException;
    :catch_7
    move-exception v5

    goto/16 :goto_1

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "conn":Ljava/net/HttpURLConnection;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "length":I
    .restart local v11    # "url":Ljava/net/URL;
    :catch_8
    move-exception v5

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .line 270
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "buf":[B
    .restart local v4    # "count":I
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "len":I
    :catch_9
    move-exception v12

    goto :goto_4
.end method

.method private showProgressDialog(Z)V
    .locals 3
    .param p1, "cancelAble"    # Z

    .prologue
    .line 173
    new-instance v0, Lcom/youku/widget/TudouProDialog;

    iget-object v1, p0, Lcom/youku/util/UpdateManager;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/youku/widget/TudouProDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/youku/util/UpdateManager;->progressDialog:Lcom/youku/widget/TudouProDialog;

    .line 174
    iget-object v0, p0, Lcom/youku/util/UpdateManager;->progressDialog:Lcom/youku/widget/TudouProDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouProDialog;->setMax(I)V

    .line 176
    iget-object v0, p0, Lcom/youku/util/UpdateManager;->progressDialog:Lcom/youku/widget/TudouProDialog;

    const-string/jumbo v1, "\u6b63\u5728\u4e0b\u8f7d\u65b0\u7248\u672c"

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouProDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/youku/util/UpdateManager;->progressDialog:Lcom/youku/widget/TudouProDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/youku/util/UpdateManager;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/util/UpdateManager;->content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouProDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcom/youku/util/UpdateManager;->progressDialog:Lcom/youku/widget/TudouProDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouProDialog;->setCancelable(Z)V

    .line 179
    if-eqz p1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/youku/util/UpdateManager;->progressDialog:Lcom/youku/widget/TudouProDialog;

    const-string/jumbo v1, "\u53d6\u6d88"

    new-instance v2, Lcom/youku/util/UpdateManager$4;

    invoke-direct {v2, p0}, Lcom/youku/util/UpdateManager$4;-><init>(Lcom/youku/util/UpdateManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouProDialog;->setNormalNegtiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/youku/util/UpdateManager;->progressDialog:Lcom/youku/widget/TudouProDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouProDialog;->show()V

    .line 197
    invoke-direct {p0}, Lcom/youku/util/UpdateManager;->startDownloadThread()V

    .line 198
    return-void
.end method

.method private startDownloadThread()V
    .locals 1

    .prologue
    .line 301
    new-instance v0, Lcom/youku/util/UpdateManager$5;

    invoke-direct {v0, p0}, Lcom/youku/util/UpdateManager$5;-><init>(Lcom/youku/util/UpdateManager;)V

    invoke-virtual {v0}, Lcom/youku/util/UpdateManager$5;->start()V

    .line 315
    return-void
.end method


# virtual methods
.method public dialogDismiss()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/youku/util/UpdateManager;->progressDialog:Lcom/youku/widget/TudouProDialog;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/youku/util/UpdateManager;->progressDialog:Lcom/youku/widget/TudouProDialog;

    invoke-virtual {v0}, Lcom/youku/widget/TudouProDialog;->dismiss()V

    .line 207
    :cond_0
    return-void
.end method

.method public setUpdateInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/youku/util/UpdateManager$UpdateType;)V
    .locals 2
    .param p1, "apkUrl"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "type"    # Lcom/youku/util/UpdateManager$UpdateType;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/youku/util/UpdateManager;->apkUrl:Ljava/lang/String;

    .line 86
    iput-object p2, p0, Lcom/youku/util/UpdateManager;->version:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lcom/youku/util/UpdateManager;->content:Ljava/lang/String;

    .line 88
    iput-object p4, p0, Lcom/youku/util/UpdateManager;->type:Lcom/youku/util/UpdateManager$UpdateType;

    .line 89
    sget-object v0, Lcom/youku/util/UpdateManager$UpdateType;->check:Lcom/youku/util/UpdateManager$UpdateType;

    if-eq p4, v0, :cond_0

    sget-object v0, Lcom/youku/util/UpdateManager$UpdateType;->force:Lcom/youku/util/UpdateManager$UpdateType;

    if-ne p4, v0, :cond_1

    .line 90
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/util/UpdateManager;->cancelable:Z

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/util/UpdateManager;->updateMsg:Ljava/lang/String;

    .line 96
    :goto_0
    return-void

    .line 93
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/util/UpdateManager;->cancelable:Z

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u5efa\u8bae\u5728wifi\u6761\u4ef6\u4e0b\u66f4\u65b0\n\n\u66f4\u65b0\u5185\u5bb9\uff1a\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/util/UpdateManager;->updateMsg:Ljava/lang/String;

    goto :goto_0
.end method

.method public showNoticeDialog()V
    .locals 3

    .prologue
    .line 101
    new-instance v0, Lcom/youku/widget/TudouDialog;

    iget-object v1, p0, Lcom/youku/util/UpdateManager;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/youku/widget/TudouDialog;-><init>(Landroid/content/Context;)V

    .line 102
    .local v0, "dialog":Lcom/youku/widget/TudouDialog;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6709\u65b0\u7248\u672c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/util/UpdateManager;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u53d1\u5e03"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setTitle(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/youku/util/UpdateManager;->updateMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setMessage(Ljava/lang/String;)V

    .line 104
    iget-boolean v1, p0, Lcom/youku/util/UpdateManager;->cancelable:Z

    invoke-virtual {v0, v1}, Lcom/youku/widget/TudouDialog;->setCancelable(Z)V

    .line 105
    const-string/jumbo v1, "\u73b0\u5728\u5347\u7ea7"

    new-instance v2, Lcom/youku/util/UpdateManager$2;

    invoke-direct {v2, p0, v0}, Lcom/youku/util/UpdateManager$2;-><init>(Lcom/youku/util/UpdateManager;Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalPositiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v1, p0, Lcom/youku/util/UpdateManager;->type:Lcom/youku/util/UpdateManager$UpdateType;

    sget-object v2, Lcom/youku/util/UpdateManager$UpdateType;->force:Lcom/youku/util/UpdateManager$UpdateType;

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "\u9000\u51fa"

    :goto_0
    new-instance v2, Lcom/youku/util/UpdateManager$3;

    invoke-direct {v2, p0, v0}, Lcom/youku/util/UpdateManager$3;-><init>(Lcom/youku/util/UpdateManager;Lcom/youku/widget/TudouDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/youku/widget/TudouDialog;->setNormalNegtiveBtn(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 168
    invoke-virtual {v0}, Lcom/youku/widget/TudouDialog;->show()V

    .line 169
    return-void

    .line 150
    :cond_0
    const-string/jumbo v1, "\u7a0d\u540e\u5347\u7ea7"

    goto :goto_0
.end method
