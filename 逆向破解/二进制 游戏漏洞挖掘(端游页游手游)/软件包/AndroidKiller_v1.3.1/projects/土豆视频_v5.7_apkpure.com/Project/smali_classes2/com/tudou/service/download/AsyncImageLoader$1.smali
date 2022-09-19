.class Lcom/tudou/service/download/AsyncImageLoader$1;
.super Ljava/lang/Thread;
.source "AsyncImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/service/download/AsyncImageLoader;->loadDrawable(Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Lcom/tudou/service/download/DownloadInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/service/download/AsyncImageLoader;

.field final synthetic val$info:Lcom/tudou/service/download/DownloadInfo;

.field final synthetic val$pathName:Ljava/lang/String;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/service/download/AsyncImageLoader;Lcom/tudou/service/download/DownloadInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/tudou/service/download/AsyncImageLoader$1;->this$0:Lcom/tudou/service/download/AsyncImageLoader;

    iput-object p2, p0, Lcom/tudou/service/download/AsyncImageLoader$1;->val$info:Lcom/tudou/service/download/DownloadInfo;

    iput-object p3, p0, Lcom/tudou/service/download/AsyncImageLoader$1;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/tudou/service/download/AsyncImageLoader$1;->val$pathName:Ljava/lang/String;

    iput-object p5, p0, Lcom/tudou/service/download/AsyncImageLoader$1;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 102
    :try_start_0
    iget-object v8, p0, Lcom/tudou/service/download/AsyncImageLoader$1;->val$info:Lcom/tudou/service/download/DownloadInfo;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/tudou/service/download/DownloadInfo;->isThumbnailDownloading:Z

    .line 104
    iget-object v8, p0, Lcom/tudou/service/download/AsyncImageLoader$1;->val$url:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/tudou/service/download/AsyncImageLoader$1;->val$url:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    .line 110
    :cond_0
    iget-object v8, p0, Lcom/tudou/service/download/AsyncImageLoader$1;->val$info:Lcom/tudou/service/download/DownloadInfo;

    iget-object v7, v8, Lcom/tudou/service/download/DownloadInfo;->imgUrl:Ljava/lang/String;

    .line 116
    .local v7, "u":Ljava/lang/String;
    :goto_0
    iget-object v8, p0, Lcom/tudou/service/download/AsyncImageLoader$1;->this$0:Lcom/tudou/service/download/AsyncImageLoader;

    invoke-static {v8, v7}, Lcom/tudou/service/download/AsyncImageLoader;->access$000(Lcom/tudou/service/download/AsyncImageLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 117
    .local v5, "i":Ljava/io/InputStream;
    new-instance v3, Ljava/io/File;

    iget-object v8, p0, Lcom/tudou/service/download/AsyncImageLoader$1;->val$pathName:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 119
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 121
    :cond_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 122
    .local v4, "fos":Ljava/io/FileOutputStream;
    const/16 v8, 0x400

    new-array v1, v8, [B

    .line 123
    .local v1, "data":[B
    const/4 v6, 0x0

    .line 124
    .local v6, "len1":I
    :goto_1
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_3

    .line 125
    const/4 v8, 0x0

    invoke-virtual {v4, v1, v8, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 134
    .end local v1    # "data":[B
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "i":Ljava/io/InputStream;
    .end local v6    # "len1":I
    .end local v7    # "u":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 135
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    const-string v8, "AsyncImageLoader"

    const-string v9, "loadDrawable"

    invoke-static {v8, v9, v2}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    iget-object v8, p0, Lcom/tudou/service/download/AsyncImageLoader$1;->val$info:Lcom/tudou/service/download/DownloadInfo;

    iput-boolean v11, v8, Lcom/tudou/service/download/DownloadInfo;->isThumbnailDownloading:Z

    .line 141
    .end local v2    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 112
    :cond_2
    :try_start_2
    iget-object v7, p0, Lcom/tudou/service/download/AsyncImageLoader$1;->val$url:Ljava/lang/String;

    .restart local v7    # "u":Ljava/lang/String;
    goto :goto_0

    .line 127
    .restart local v1    # "data":[B
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "i":Ljava/io/InputStream;
    .restart local v6    # "len1":I
    :cond_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 128
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 129
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 130
    iget-object v8, p0, Lcom/tudou/service/download/AsyncImageLoader$1;->val$pathName:Ljava/lang/String;

    invoke-static {v8}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 131
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/tudou/service/download/AsyncImageLoader$1;->this$0:Lcom/tudou/service/download/AsyncImageLoader;

    invoke-static {v8}, Lcom/tudou/service/download/AsyncImageLoader;->access$100(Lcom/tudou/service/download/AsyncImageLoader;)Ljava/util/HashMap;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/tudou/service/download/AsyncImageLoader$1;->val$pathName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/tudou/service/download/AsyncImageLoader$1;->val$tag:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/ref/SoftReference;

    invoke-direct {v10, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    iget-object v8, p0, Lcom/tudou/service/download/AsyncImageLoader$1;->val$info:Lcom/tudou/service/download/DownloadInfo;

    iput-boolean v11, v8, Lcom/tudou/service/download/DownloadInfo;->isThumbnailDownloading:Z

    goto :goto_2

    .line 136
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "data":[B
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "i":Ljava/io/InputStream;
    .end local v6    # "len1":I
    .end local v7    # "u":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 137
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v8, "AsyncImageLoader"

    const-string v9, "loadDrawable"

    invoke-static {v8, v9, v2}, Lcom/youku/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 139
    iget-object v8, p0, Lcom/tudou/service/download/AsyncImageLoader$1;->val$info:Lcom/tudou/service/download/DownloadInfo;

    iput-boolean v11, v8, Lcom/tudou/service/download/DownloadInfo;->isThumbnailDownloading:Z

    goto :goto_2

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lcom/tudou/service/download/AsyncImageLoader$1;->val$info:Lcom/tudou/service/download/DownloadInfo;

    iput-boolean v11, v9, Lcom/tudou/service/download/DownloadInfo;->isThumbnailDownloading:Z

    throw v8
.end method
