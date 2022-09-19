.class Lcom/punchbox/engine/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/punchbox/engine/r;


# direct methods
.method constructor <init>(Lcom/punchbox/engine/r;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/engine/t;->a:Lcom/punchbox/engine/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/16 v7, 0x838

    const/4 v6, 0x4

    const/4 v5, 0x0

    const-string v0, "CoCoAdSDK-DownloadRequest"

    const-string v1, "createFileOnDisk"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/punchbox/util/i;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/punchbox/engine/t;->a:Lcom/punchbox/engine/r;

    invoke-static {v0}, Lcom/punchbox/engine/r;->f(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    const/16 v2, 0x89d

    invoke-virtual {v0, v1, v2, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/punchbox/engine/t;->a:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->j(Lcom/punchbox/engine/r;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/punchbox/engine/t;->a:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->k(Lcom/punchbox/engine/r;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-object v2, p0, Lcom/punchbox/engine/t;->a:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->d(Lcom/punchbox/engine/r;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/punchbox/engine/t;->a:Lcom/punchbox/engine/r;

    invoke-static {v0}, Lcom/punchbox/engine/r;->d(Lcom/punchbox/engine/r;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/punchbox/util/i;->b(J)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/punchbox/engine/t;->a:Lcom/punchbox/engine/r;

    invoke-static {v0}, Lcom/punchbox/engine/r;->f(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x83e

    invoke-virtual {v0, v6, v1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/punchbox/engine/t;->a:Lcom/punchbox/engine/r;

    sget v1, Lcom/punchbox/engine/e;->b:I

    invoke-static {v0, v1}, Lcom/punchbox/engine/r;->c(Lcom/punchbox/engine/r;I)V

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/punchbox/engine/t;->a:Lcom/punchbox/engine/r;

    new-instance v1, Ljava/io/RandomAccessFile;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/punchbox/engine/t;->a:Lcom/punchbox/engine/r;

    invoke-static {v3}, Lcom/punchbox/engine/r;->j(Lcom/punchbox/engine/r;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/punchbox/engine/t;->a:Lcom/punchbox/engine/r;

    invoke-static {v3}, Lcom/punchbox/engine/r;->k(Lcom/punchbox/engine/r;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/punchbox/engine/r;->a(Lcom/punchbox/engine/r;Ljava/io/RandomAccessFile;)Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcom/punchbox/engine/t;->a:Lcom/punchbox/engine/r;

    invoke-static {v0}, Lcom/punchbox/engine/r;->y(Lcom/punchbox/engine/r;)Ljava/io/RandomAccessFile;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget-object v2, p0, Lcom/punchbox/engine/t;->a:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->d(Lcom/punchbox/engine/r;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/punchbox/engine/t;->a:Lcom/punchbox/engine/r;

    invoke-static {v0}, Lcom/punchbox/engine/r;->y(Lcom/punchbox/engine/r;)Ljava/io/RandomAccessFile;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/engine/t;->a:Lcom/punchbox/engine/r;

    invoke-static {v1}, Lcom/punchbox/engine/r;->d(Lcom/punchbox/engine/r;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    :cond_4
    iget-object v0, p0, Lcom/punchbox/engine/t;->a:Lcom/punchbox/engine/r;

    invoke-static {v0}, Lcom/punchbox/engine/r;->z(Lcom/punchbox/engine/r;)V

    iget-object v0, p0, Lcom/punchbox/engine/t;->a:Lcom/punchbox/engine/r;

    invoke-static {v0}, Lcom/punchbox/engine/r;->A(Lcom/punchbox/engine/r;)V

    iget-object v0, p0, Lcom/punchbox/engine/t;->a:Lcom/punchbox/engine/r;

    invoke-static {v0}, Lcom/punchbox/engine/r;->f(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/punchbox/engine/t;->a:Lcom/punchbox/engine/r;

    invoke-static {v2}, Lcom/punchbox/engine/r;->e(Lcom/punchbox/engine/r;)Lcom/punchbox/v4/a/e;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/punchbox/engine/t;->a:Lcom/punchbox/engine/r;

    invoke-static {v0}, Lcom/punchbox/engine/r;->y(Lcom/punchbox/engine/r;)Ljava/io/RandomAccessFile;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/punchbox/engine/t;->a:Lcom/punchbox/engine/r;

    invoke-static {v0}, Lcom/punchbox/engine/r;->y(Lcom/punchbox/engine/r;)Ljava/io/RandomAccessFile;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v0, p0, Lcom/punchbox/engine/t;->a:Lcom/punchbox/engine/r;

    invoke-static {v0}, Lcom/punchbox/engine/r;->f(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6, v7, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/punchbox/engine/t;->a:Lcom/punchbox/engine/r;

    sget v1, Lcom/punchbox/engine/e;->b:I

    invoke-static {v0, v1}, Lcom/punchbox/engine/r;->c(Lcom/punchbox/engine/r;I)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/punchbox/engine/t;->a:Lcom/punchbox/engine/r;

    invoke-static {v1}, Lcom/punchbox/engine/r;->f(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    const/16 v3, 0x837

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    iget-object v1, p0, Lcom/punchbox/engine/t;->a:Lcom/punchbox/engine/r;

    sget v2, Lcom/punchbox/engine/e;->b:I

    invoke-static {v1, v2}, Lcom/punchbox/engine/r;->c(Lcom/punchbox/engine/r;I)V

    iget-object v1, p0, Lcom/punchbox/engine/t;->a:Lcom/punchbox/engine/r;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/punchbox/engine/r;->a(Lcom/punchbox/engine/r;Ljava/io/RandomAccessFile;)Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/punchbox/engine/t;->a:Lcom/punchbox/engine/r;

    invoke-static {v0}, Lcom/punchbox/engine/r;->y(Lcom/punchbox/engine/r;)Ljava/io/RandomAccessFile;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_3
    iget-object v0, p0, Lcom/punchbox/engine/t;->a:Lcom/punchbox/engine/r;

    invoke-static {v0}, Lcom/punchbox/engine/r;->y(Lcom/punchbox/engine/r;)Ljava/io/RandomAccessFile;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v0, p0, Lcom/punchbox/engine/t;->a:Lcom/punchbox/engine/r;

    invoke-static {v0}, Lcom/punchbox/engine/r;->f(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6, v7, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/punchbox/engine/t;->a:Lcom/punchbox/engine/r;

    sget v1, Lcom/punchbox/engine/e;->b:I

    invoke-static {v0, v1}, Lcom/punchbox/engine/r;->c(Lcom/punchbox/engine/r;I)V

    goto/16 :goto_0

    :catch_3
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/punchbox/engine/t;->a:Lcom/punchbox/engine/r;

    invoke-static {v1}, Lcom/punchbox/engine/r;->f(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    const/16 v3, 0x837

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    iget-object v1, p0, Lcom/punchbox/engine/t;->a:Lcom/punchbox/engine/r;

    sget v2, Lcom/punchbox/engine/e;->b:I

    invoke-static {v1, v2}, Lcom/punchbox/engine/r;->c(Lcom/punchbox/engine/r;I)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, p0, Lcom/punchbox/engine/t;->a:Lcom/punchbox/engine/r;

    invoke-static {v0}, Lcom/punchbox/engine/r;->y(Lcom/punchbox/engine/r;)Ljava/io/RandomAccessFile;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_5
    iget-object v0, p0, Lcom/punchbox/engine/t;->a:Lcom/punchbox/engine/r;

    invoke-static {v0}, Lcom/punchbox/engine/r;->y(Lcom/punchbox/engine/r;)Ljava/io/RandomAccessFile;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v0, p0, Lcom/punchbox/engine/t;->a:Lcom/punchbox/engine/r;

    invoke-static {v0}, Lcom/punchbox/engine/r;->f(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6, v7, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/punchbox/engine/t;->a:Lcom/punchbox/engine/r;

    sget v1, Lcom/punchbox/engine/e;->b:I

    invoke-static {v0, v1}, Lcom/punchbox/engine/r;->c(Lcom/punchbox/engine/r;I)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/punchbox/engine/t;->a:Lcom/punchbox/engine/r;

    invoke-static {v1}, Lcom/punchbox/engine/r;->y(Lcom/punchbox/engine/r;)Ljava/io/RandomAccessFile;

    move-result-object v1

    if-eqz v1, :cond_5

    :try_start_6
    iget-object v1, p0, Lcom/punchbox/engine/t;->a:Lcom/punchbox/engine/r;

    invoke-static {v1}, Lcom/punchbox/engine/r;->y(Lcom/punchbox/engine/r;)Ljava/io/RandomAccessFile;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_5
    :goto_1
    throw v0

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    iget-object v1, p0, Lcom/punchbox/engine/t;->a:Lcom/punchbox/engine/r;

    invoke-static {v1}, Lcom/punchbox/engine/r;->f(Lcom/punchbox/engine/r;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6, v7, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    iget-object v1, p0, Lcom/punchbox/engine/t;->a:Lcom/punchbox/engine/r;

    sget v2, Lcom/punchbox/engine/e;->b:I

    invoke-static {v1, v2}, Lcom/punchbox/engine/r;->c(Lcom/punchbox/engine/r;I)V

    goto :goto_1
.end method
