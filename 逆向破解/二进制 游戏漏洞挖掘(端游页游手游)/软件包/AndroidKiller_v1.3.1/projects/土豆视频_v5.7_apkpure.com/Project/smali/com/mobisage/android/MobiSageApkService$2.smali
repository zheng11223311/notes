.class Lcom/mobisage/android/MobiSageApkService$2;
.super Ljava/lang/Object;
.source "MobiSageApkService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobisage/android/MobiSageApkService;->processDownload(Landroid/content/Context;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobisage/android/MobiSageApkService;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$params:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/mobisage/android/MobiSageApkService;Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/mobisage/android/MobiSageApkService$2;->this$0:Lcom/mobisage/android/MobiSageApkService;

    iput-object p2, p0, Lcom/mobisage/android/MobiSageApkService$2;->val$params:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/mobisage/android/MobiSageApkService$2;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/16 v13, 0x9

    .line 205
    const/4 v8, 0x0

    .line 207
    .local v8, "url":Ljava/net/URL;
    :try_start_0
    new-instance v9, Ljava/net/URL;

    iget-object v10, p0, Lcom/mobisage/android/MobiSageApkService$2;->val$params:Landroid/os/Bundle;

    const-string v11, "lpg"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 208
    .end local v8    # "url":Ljava/net/URL;
    .local v9, "url":Ljava/net/URL;
    :try_start_1
    iget-object v10, p0, Lcom/mobisage/android/MobiSageApkService$2;->this$0:Lcom/mobisage/android/MobiSageApkService;

    invoke-virtual {v10}, Lcom/mobisage/android/MobiSageApkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/mobisage/android/MobiSageApkService;->isConnect(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 209
    invoke-virtual {v9}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, "path":Ljava/lang/String;
    const-string v10, "."

    invoke-virtual {v3, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "extName":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-virtual {v9}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    .local v5, "target":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "name":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v4

    .line 216
    .local v4, "sdCard":Ljava/io/File;
    const/4 v7, 0x0

    .line 218
    .local v7, "temp":Ljava/io/File;
    :try_start_2
    new-instance v7, Ljava/io/File;

    .end local v7    # "temp":Ljava/io/File;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 223
    .restart local v7    # "temp":Ljava/io/File;
    :goto_0
    :try_start_3
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 224
    const/4 v6, 0x0

    .line 226
    .local v6, "targetPath":Ljava/lang/String;
    :try_start_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v6

    .line 233
    :goto_1
    :try_start_5
    new-instance v7, Ljava/io/File;

    .end local v7    # "temp":Ljava/io/File;
    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    .restart local v7    # "temp":Ljava/io/File;
    sget-object v10, Lcom/mobisage/android/MobiSageApkService;->downloadingSet:Ljava/util/Set;

    iget-object v11, p0, Lcom/mobisage/android/MobiSageApkService$2;->val$params:Landroid/os/Bundle;

    const-string v12, "lpg"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v10, p0, Lcom/mobisage/android/MobiSageApkService$2;->val$ctx:Landroid/content/Context;

    invoke-static {v10, v2, v7, v9}, Lcom/mobisage/android/MobiSageApkService$Downloader;->download(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/net/URL;)Ljava/lang/String;

    .end local v1    # "extName":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "sdCard":Ljava/io/File;
    .end local v5    # "target":Ljava/io/File;
    .end local v6    # "targetPath":Ljava/lang/String;
    .end local v7    # "temp":Ljava/io/File;
    :cond_0
    :goto_2
    move-object v8, v9

    .line 263
    .end local v9    # "url":Ljava/net/URL;
    .restart local v8    # "url":Ljava/net/URL;
    :goto_3
    return-void

    .line 220
    .end local v8    # "url":Ljava/net/URL;
    .restart local v1    # "extName":Ljava/lang/String;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v4    # "sdCard":Ljava/io/File;
    .restart local v5    # "target":Ljava/io/File;
    .restart local v9    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/NoSuchFieldError;
    new-instance v7, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/Download/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v7    # "temp":Ljava/io/File;
    goto :goto_0

    .line 229
    .end local v0    # "e":Ljava/lang/NoSuchFieldError;
    .restart local v6    # "targetPath":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 230
    .restart local v0    # "e":Ljava/lang/NoSuchFieldError;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/Download/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 243
    .end local v0    # "e":Ljava/lang/NoSuchFieldError;
    .end local v1    # "extName":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "sdCard":Ljava/io/File;
    .end local v5    # "target":Ljava/io/File;
    .end local v6    # "targetPath":Ljava/lang/String;
    .end local v7    # "temp":Ljava/io/File;
    :cond_1
    iget-object v10, p0, Lcom/mobisage/android/MobiSageApkService$2;->this$0:Lcom/mobisage/android/MobiSageApkService;

    invoke-static {v10}, Lcom/mobisage/android/MobiSageApkService;->access$000(Lcom/mobisage/android/MobiSageApkService;)Landroid/os/Handler;

    move-result-object v10

    const/16 v11, 0xb

    invoke-static {v10, v11}, Lcom/mobisage/android/MobiSageApkService;->sendErroMsg(Landroid/os/Handler;I)V

    .line 244
    sget-object v10, Lcom/mobisage/android/MobiSageApkService;->downloadingSet:Ljava/util/Set;

    iget-object v11, p0, Lcom/mobisage/android/MobiSageApkService$2;->val$params:Landroid/os/Bundle;

    const-string v12, "lpg"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 245
    sget-object v10, Lcom/mobisage/android/MobiSageApkService;->downloadingSet:Ljava/util/Set;

    iget-object v11, p0, Lcom/mobisage/android/MobiSageApkService$2;->val$params:Landroid/os/Bundle;

    const-string v12, "lpg"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    .line 249
    :catch_2
    move-exception v0

    move-object v8, v9

    .line 250
    .end local v9    # "url":Ljava/net/URL;
    .local v0, "e":Ljava/net/MalformedURLException;
    .restart local v8    # "url":Ljava/net/URL;
    :goto_4
    iget-object v10, p0, Lcom/mobisage/android/MobiSageApkService$2;->this$0:Lcom/mobisage/android/MobiSageApkService;

    invoke-static {v10}, Lcom/mobisage/android/MobiSageApkService;->access$000(Lcom/mobisage/android/MobiSageApkService;)Landroid/os/Handler;

    move-result-object v10

    invoke-static {v10, v13}, Lcom/mobisage/android/MobiSageApkService;->sendErroMsg(Landroid/os/Handler;I)V

    .line 251
    sget-object v10, Lcom/mobisage/android/MobiSageApkService;->downloadingSet:Ljava/util/Set;

    invoke-interface {v10, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 252
    sget-object v10, Lcom/mobisage/android/MobiSageApkService;->downloadingSet:Ljava/util/Set;

    invoke-interface {v10, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 254
    :cond_2
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_3

    .line 255
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :catch_3
    move-exception v0

    .line 257
    .local v0, "e":Ljava/io/IOException;
    :goto_5
    sget-object v10, Lcom/mobisage/android/MobiSageApkService;->downloadingSet:Ljava/util/Set;

    invoke-interface {v10, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 258
    sget-object v10, Lcom/mobisage/android/MobiSageApkService;->downloadingSet:Ljava/util/Set;

    invoke-interface {v10, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 260
    :cond_3
    iget-object v10, p0, Lcom/mobisage/android/MobiSageApkService$2;->this$0:Lcom/mobisage/android/MobiSageApkService;

    invoke-static {v10}, Lcom/mobisage/android/MobiSageApkService;->access$000(Lcom/mobisage/android/MobiSageApkService;)Landroid/os/Handler;

    move-result-object v10

    invoke-static {v10, v13}, Lcom/mobisage/android/MobiSageApkService;->sendErroMsg(Landroid/os/Handler;I)V

    .line 261
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 255
    .end local v0    # "e":Ljava/io/IOException;
    .end local v8    # "url":Ljava/net/URL;
    .restart local v9    # "url":Ljava/net/URL;
    :catch_4
    move-exception v0

    move-object v8, v9

    .end local v9    # "url":Ljava/net/URL;
    .restart local v8    # "url":Ljava/net/URL;
    goto :goto_5

    .line 249
    :catch_5
    move-exception v0

    goto :goto_4
.end method
