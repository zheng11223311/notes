.class Lcn/domob/android/c/a$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/c/a;


# direct methods
.method constructor <init>(Lcn/domob/android/c/a;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    const/16 v7, 0x64

    const/4 v3, 0x0

    .line 311
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 313
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v2}, Lcn/domob/android/c/a;->a(Lcn/domob/android/c/a;)I

    move-result v2

    sub-int/2addr v0, v2

    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v7, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    iget-object v0, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v2}, Lcn/domob/android/c/a;->a(Lcn/domob/android/c/a;I)I

    .line 317
    iget-object v0, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v2}, Lcn/domob/android/c/a;->b(Lcn/domob/android/c/a;I)I

    .line 318
    iget-object v0, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v0}, Lcn/domob/android/c/a;->b(Lcn/domob/android/c/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 320
    iget-object v0, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v0}, Lcn/domob/android/c/a;->e(Lcn/domob/android/c/a;)Landroid/app/Notification;

    move-result-object v0

    invoke-static {}, Lcn/domob/android/c/a;->b()Landroid/content/Context;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v5}, Lcn/domob/android/c/a;->c(Lcn/domob/android/c/a;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u6b63\u5728\u4e0b\u8f7d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u5df2\u4e0b\u8f7d"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v6}, Lcn/domob/android/c/a;->d(Lcn/domob/android/c/a;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v0, v2, v4, v5, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 321
    iget-object v0, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v0}, Lcn/domob/android/c/a;->g(Lcn/domob/android/c/a;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v2, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v2}, Lcn/domob/android/c/a;->f(Lcn/domob/android/c/a;)I

    move-result v2

    iget-object v4, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v4}, Lcn/domob/android/c/a;->e(Lcn/domob/android/c/a;)Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 324
    :cond_2
    iget-object v0, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v0}, Lcn/domob/android/c/a;->h(Lcn/domob/android/c/a;)I

    move-result v0

    if-ne v0, v7, :cond_0

    .line 325
    invoke-static {}, Lcn/domob/android/c/a;->c()Lcn/domob/android/ads/c/f;

    move-result-object v0

    const-class v2, Lcn/domob/android/c/a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v5}, Lcn/domob/android/c/a;->c(Lcn/domob/android/c/a;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " download success"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    new-instance v5, Ljava/io/File;

    iget-object v0, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v0}, Lcn/domob/android/c/a;->i(Lcn/domob/android/c/a;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v0}, Lcn/domob/android/c/a;->i(Lcn/domob/android/c/a;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ".temp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 329
    iget-object v0, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    iget-object v2, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v2}, Lcn/domob/android/c/a;->i(Lcn/domob/android/c/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v4}, Lcn/domob/android/c/a;->i(Lcn/domob/android/c/a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const-string v6, ".temp"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/domob/android/c/a;->a(Lcn/domob/android/c/a;Ljava/lang/String;)Ljava/lang/String;

    .line 331
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v2}, Lcn/domob/android/c/a;->i(Lcn/domob/android/c/a;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 332
    invoke-static {}, Lcn/domob/android/c/a;->c()Lcn/domob/android/ads/c/f;

    move-result-object v2

    const-class v4, Lcn/domob/android/c/a;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v7}, Lcn/domob/android/c/a;->c(Lcn/domob/android/c/a;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "FileName change to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    invoke-virtual {v5, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 338
    :cond_3
    iget-object v0, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v0}, Lcn/domob/android/c/a;->j(Lcn/domob/android/c/a;)I

    move-result v0

    if-nez v0, :cond_c

    .line 339
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    move v2, v3

    move-object v0, v1

    .line 343
    :goto_1
    const/4 v4, 0x2

    if-ge v2, v4, :cond_4

    if-nez v0, :cond_4

    .line 344
    invoke-static {}, Lcn/domob/android/c/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v6, v4, v7}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 346
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v4

    goto :goto_1

    .line 349
    :cond_4
    invoke-static {}, Lcn/domob/android/c/a;->c()Lcn/domob/android/ads/c/f;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fetch picture ablum path "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 350
    if-nez v0, :cond_5

    .line 351
    invoke-static {}, Lcn/domob/android/c/a;->c()Lcn/domob/android/ads/c/f;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insert "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed, change the resType to other"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 353
    iget-object v2, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcn/domob/android/c/a;->c(Lcn/domob/android/c/a;I)I

    .line 358
    :cond_5
    :goto_2
    sget-object v2, Lcn/domob/android/c/a;->a:Ljava/util/Hashtable;

    iget-object v4, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v4}, Lcn/domob/android/c/a;->k(Lcn/domob/android/c/a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object v2, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v2}, Lcn/domob/android/c/a;->l(Lcn/domob/android/c/a;)Lcn/domob/android/c/b;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 360
    iget-object v2, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v2}, Lcn/domob/android/c/a;->l(Lcn/domob/android/c/a;)Lcn/domob/android/c/b;

    move-result-object v2

    iget-object v4, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v4}, Lcn/domob/android/c/a;->i(Lcn/domob/android/c/a;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v5}, Lcn/domob/android/c/a;->m(Lcn/domob/android/c/a;)J

    move-result-wide v6

    invoke-interface {v2, v4, v6, v7}, Lcn/domob/android/c/b;->a(Ljava/lang/String;J)V

    .line 362
    :cond_6
    iget-object v2, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v2, v3}, Lcn/domob/android/c/a;->b(Lcn/domob/android/c/a;I)I

    .line 363
    iget-object v2, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v2}, Lcn/domob/android/c/a;->b(Lcn/domob/android/c/a;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 364
    iget-object v2, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v2}, Lcn/domob/android/c/a;->e(Lcn/domob/android/c/a;)Landroid/app/Notification;

    move-result-object v2

    const v3, 0x1080082

    iput v3, v2, Landroid/app/Notification;->icon:I

    .line 365
    iget-object v2, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v2}, Lcn/domob/android/c/a;->e(Lcn/domob/android/c/a;)Landroid/app/Notification;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v4}, Lcn/domob/android/c/a;->c(Lcn/domob/android/c/a;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u4e0b\u8f7d\u5b8c\u6bd5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 366
    iget-object v2, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v2}, Lcn/domob/android/c/a;->e(Lcn/domob/android/c/a;)Landroid/app/Notification;

    move-result-object v2

    const/16 v3, 0x10

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 368
    iget-object v2, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v2}, Lcn/domob/android/c/a;->n(Lcn/domob/android/c/a;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 369
    iget-object v2, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v2}, Lcn/domob/android/c/a;->j(Lcn/domob/android/c/a;)I

    move-result v2

    if-nez v2, :cond_7

    .line 370
    invoke-static {v0}, Lcn/domob/android/c/a;->b(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 379
    :goto_3
    iget-object v3, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {}, Lcn/domob/android/c/a;->b()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v5}, Lcn/domob/android/c/a;->f(Lcn/domob/android/c/a;)I

    move-result v5

    const/high16 v6, 0x8000000

    invoke-static {v4, v5, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-static {v3, v2}, Lcn/domob/android/c/a;->a(Lcn/domob/android/c/a;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 381
    iget-object v2, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v2}, Lcn/domob/android/c/a;->e(Lcn/domob/android/c/a;)Landroid/app/Notification;

    move-result-object v2

    invoke-static {}, Lcn/domob/android/c/a;->b()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v5}, Lcn/domob/android/c/a;->c(Lcn/domob/android/c/a;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u4e0b\u8f7d\u5b8c\u6bd5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    iget-object v6, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v6}, Lcn/domob/android/c/a;->d(Lcn/domob/android/c/a;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 382
    iget-object v2, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v2}, Lcn/domob/android/c/a;->g(Lcn/domob/android/c/a;)Landroid/app/NotificationManager;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v3}, Lcn/domob/android/c/a;->f(Lcn/domob/android/c/a;)I

    move-result v3

    iget-object v4, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v4}, Lcn/domob/android/c/a;->e(Lcn/domob/android/c/a;)Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 383
    iget-object v2, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v2}, Lcn/domob/android/c/a;->o(Lcn/domob/android/c/a;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 385
    iget-object v2, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v2}, Lcn/domob/android/c/a;->o(Lcn/domob/android/c/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v3}, Lcn/domob/android/c/a;->i(Lcn/domob/android/c/a;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/domob/android/ads/c/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 386
    iget-object v0, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v0}, Lcn/domob/android/c/a;->l(Lcn/domob/android/c/a;)Lcn/domob/android/c/b;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v1}, Lcn/domob/android/c/a;->k(Lcn/domob/android/c/a;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/domob/android/c/b;->a(Ljava/lang/String;)V

    .line 387
    invoke-static {}, Lcn/domob/android/c/a;->c()Lcn/domob/android/ads/c/f;

    move-result-object v0

    invoke-static {}, Lcn/domob/android/c/a;->b()Landroid/content/Context;

    move-result-object v1

    const-string v2, "md5 authorized failed"

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v0}, Lcn/domob/android/c/a;->g(Lcn/domob/android/c/a;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v1}, Lcn/domob/android/c/a;->f(Lcn/domob/android/c/a;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    .line 372
    :cond_7
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    goto/16 :goto_3

    .line 376
    :cond_8
    iget-object v2, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v2}, Lcn/domob/android/c/a;->i(Lcn/domob/android/c/a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/domob/android/c/a;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    goto/16 :goto_3

    .line 393
    :cond_9
    iget-object v2, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v2}, Lcn/domob/android/c/a;->n(Lcn/domob/android/c/a;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 394
    iget-object v2, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v2}, Lcn/domob/android/c/a;->j(Lcn/domob/android/c/a;)I

    move-result v2

    if-nez v2, :cond_a

    .line 395
    invoke-static {v0}, Lcn/domob/android/c/a;->b(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 413
    :goto_4
    if-eqz v1, :cond_0

    .line 414
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 415
    invoke-static {}, Lcn/domob/android/c/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 398
    :cond_a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcn/domob/android/c/a;->d()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v2, "\u786e\u8ba4"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v3}, Lcn/domob/android/c/a;->c(Lcn/domob/android/c/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u5df2\u88ab\u4e0b\u8f7d\u5230\u8def\u5f84:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v3}, Lcn/domob/android/c/a;->i(Lcn/domob/android/c/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v2, "\u786e\u5b9a"

    new-instance v3, Lcn/domob/android/c/a$1$1;

    invoke-direct {v3, p0}, Lcn/domob/android/c/a$1$1;-><init>(Lcn/domob/android/c/a$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 406
    iget-object v0, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v0}, Lcn/domob/android/c/a;->g(Lcn/domob/android/c/a;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v2, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v2}, Lcn/domob/android/c/a;->f(Lcn/domob/android/c/a;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_4

    .line 411
    :cond_b
    iget-object v0, p0, Lcn/domob/android/c/a$1;->a:Lcn/domob/android/c/a;

    invoke-static {v0}, Lcn/domob/android/c/a;->i(Lcn/domob/android/c/a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/c/a;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_4

    :cond_c
    move-object v0, v1

    goto/16 :goto_2
.end method
