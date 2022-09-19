.class final Lcom/alibaba/sdk/android/hotpatch/impl/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/hotpatch/impl/c;->e:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;

    iput-object p2, p0, Lcom/alibaba/sdk/android/hotpatch/impl/c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/sdk/android/hotpatch/impl/c;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/sdk/android/hotpatch/impl/c;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/sdk/android/hotpatch/impl/c;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    :try_start_0
    iget-object v1, p0, Lcom/alibaba/sdk/android/hotpatch/impl/c;->a:Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/alibaba/sdk/android/hotpatch/impl/c;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "_"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Lcom/alibaba/sdk/android/hotpatch/impl/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "_"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lcom/alibaba/sdk/android/hotpatch/impl/c;->e:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;

    iget-object v3, p0, Lcom/alibaba/sdk/android/hotpatch/impl/c;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/sdk/android/hotpatch/impl/c;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/sdk/android/hotpatch/impl/c;->d:Ljava/lang/String;

    invoke-static {v2, v3, v1, v4, v5}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->a(Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sget v3, Lcom/alibaba/sdk/android/hotpatch/g;->a:I

    if-ne v2, v3, :cond_3

    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/c;->e:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;

    invoke-static {v0}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->e(Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;)Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;

    move-result-object v0

    iput-object v1, v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->apkLocalPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/c;->e:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;

    invoke-static {v0}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->f(Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/sdk/android/hotpatch/impl/c;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/sdk/android/hotpatch/impl/c;->e:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;

    invoke-static {v3}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->e(Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;)Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->apkLocalPath:Ljava/lang/String;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->apkLocalPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, v0, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;->apkLocalPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/c;->e:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;

    iget-object v1, p0, Lcom/alibaba/sdk/android/hotpatch/impl/c;->e:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;

    invoke-static {v1}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->e(Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;)Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->a(Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl$HotPatchInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/c;->e:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;

    invoke-static {v0}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->b(Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;)V

    return-void

    :cond_3
    :try_start_1
    const-string v1, "hotpatch"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "skip the current updated hotpatch, the error code = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_4
    sget v0, Lcom/alibaba/sdk/android/hotpatch/g;->i:I

    if-ne v2, v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/c;->e:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;

    invoke-static {v0}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->a(Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/c;->e:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;

    invoke-static {v0}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->c(Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;)Z

    iget-object v0, p0, Lcom/alibaba/sdk/android/hotpatch/impl/c;->e:Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;

    invoke-static {v0}, Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;->d(Lcom/alibaba/sdk/android/hotpatch/impl/HotPatchManagerImpl;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "hotpatch"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fail to apply the patch name ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/sdk/android/hotpatch/impl/c;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] apkPath ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/hotpatch/impl/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] version = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/hotpatch/impl/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], the error message is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
