.class Lcom/punchbox/engine/ak;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/punchbox/engine/PunchBoxService;

.field private b:Lcom/punchbox/v4/a/e;

.field private c:Landroid/app/NotificationManager;

.field private d:Ljava/io/InputStream;

.field private e:Ljava/lang/String;

.field private f:Ljava/io/RandomAccessFile;

.field private g:I

.field private final h:I

.field private i:[B

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Z

.field private p:I


# direct methods
.method private constructor <init>(Lcom/punchbox/engine/PunchBoxService;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2

    const/16 v0, 0x5000

    iput-object p1, p0, Lcom/punchbox/engine/ak;->a:Lcom/punchbox/engine/PunchBoxService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput v0, p0, Lcom/punchbox/engine/ak;->h:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/punchbox/engine/ak;->i:[B

    iput-object p4, p0, Lcom/punchbox/engine/ak;->k:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/punchbox/engine/ak;->o:Z

    iput-object p5, p0, Lcom/punchbox/engine/ak;->l:Ljava/lang/String;

    iput-object p6, p0, Lcom/punchbox/engine/ak;->m:Ljava/lang/String;

    iput p7, p0, Lcom/punchbox/engine/ak;->p:I

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Lcom/punchbox/engine/PunchBoxService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/punchbox/engine/ak;->c:Landroid/app/NotificationManager;

    new-instance v0, Lcom/punchbox/v4/a/e;

    invoke-direct {v0, p1}, Lcom/punchbox/v4/a/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/punchbox/engine/ak;->b:Lcom/punchbox/v4/a/e;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/punchbox/util/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/punchbox/engine/ak;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/punchbox/engine/ak;->j:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/punchbox/engine/PunchBoxService;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcom/punchbox/engine/aj;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/punchbox/engine/ak;-><init>(Lcom/punchbox/engine/PunchBoxService;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method private a()V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/punchbox/engine/ak;->b:Lcom/punchbox/v4/a/e;

    iget-object v1, p0, Lcom/punchbox/engine/ak;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/punchbox/v4/a/e;->a(Ljava/lang/CharSequence;)Lcom/punchbox/v4/a/e;

    iget-object v0, p0, Lcom/punchbox/engine/ak;->b:Lcom/punchbox/v4/a/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v2, v1}, Lcom/punchbox/v4/a/e;->a(IIZ)Lcom/punchbox/v4/a/e;

    iget-object v0, p0, Lcom/punchbox/engine/ak;->b:Lcom/punchbox/v4/a/e;

    sget-object v1, Lcom/punchbox/v4/o/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/punchbox/v4/a/e;->b(Ljava/lang/CharSequence;)Lcom/punchbox/v4/a/e;

    iget-object v0, p0, Lcom/punchbox/engine/ak;->b:Lcom/punchbox/v4/a/e;

    const v1, 0x1080081

    invoke-virtual {v0, v1}, Lcom/punchbox/v4/a/e;->a(I)Lcom/punchbox/v4/a/e;

    iget-object v0, p0, Lcom/punchbox/engine/ak;->b:Lcom/punchbox/v4/a/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/punchbox/v4/o/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/punchbox/engine/ak;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/punchbox/v4/a/e;->c(Ljava/lang/CharSequence;)Lcom/punchbox/v4/a/e;

    iget-object v0, p0, Lcom/punchbox/engine/ak;->a:Lcom/punchbox/engine/PunchBoxService;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-direct {p0}, Lcom/punchbox/engine/ak;->b()Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/engine/ak;->b:Lcom/punchbox/v4/a/e;

    invoke-virtual {v1, v0}, Lcom/punchbox/v4/a/e;->a(Landroid/app/PendingIntent;)Lcom/punchbox/v4/a/e;

    return-void
.end method

.method private a(I)V
    .locals 3

    iget-object v0, p0, Lcom/punchbox/engine/ak;->b:Lcom/punchbox/v4/a/e;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/punchbox/v4/a/e;->a(IIZ)Lcom/punchbox/v4/a/e;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/punchbox/engine/ak;->a:Lcom/punchbox/engine/PunchBoxService;

    invoke-virtual {v1, v0}, Lcom/punchbox/engine/PunchBoxService;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private b()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/punchbox/engine/i;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "full_path"

    iget-object v2, p0, Lcom/punchbox/engine/ak;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "pkg_name"

    iget-object v2, p0, Lcom/punchbox/engine/ak;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Lcom/punchbox/v4/h/k;

    invoke-direct {v0}, Lcom/punchbox/v4/h/k;-><init>()V

    invoke-virtual {v0, p1}, Lcom/punchbox/v4/h/k;->g(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private c()V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/punchbox/engine/ak;->b:Lcom/punchbox/v4/a/e;

    sget-object v1, Lcom/punchbox/v4/o/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/punchbox/v4/a/e;->b(Ljava/lang/CharSequence;)Lcom/punchbox/v4/a/e;

    iget-object v0, p0, Lcom/punchbox/engine/ak;->b:Lcom/punchbox/v4/a/e;

    invoke-virtual {v0, v2, v2, v2}, Lcom/punchbox/v4/a/e;->a(IIZ)Lcom/punchbox/v4/a/e;

    iget-object v0, p0, Lcom/punchbox/engine/ak;->b:Lcom/punchbox/v4/a/e;

    const v1, 0x1080082

    invoke-virtual {v0, v1}, Lcom/punchbox/v4/a/e;->a(I)Lcom/punchbox/v4/a/e;

    iget-object v0, p0, Lcom/punchbox/engine/ak;->a:Lcom/punchbox/engine/PunchBoxService;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-direct {p0}, Lcom/punchbox/engine/ak;->b()Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/engine/ak;->b:Lcom/punchbox/v4/a/e;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/punchbox/v4/a/e;->a(Z)Lcom/punchbox/v4/a/e;

    iget-object v1, p0, Lcom/punchbox/engine/ak;->b:Lcom/punchbox/v4/a/e;

    invoke-virtual {v1, v0}, Lcom/punchbox/v4/a/e;->a(Landroid/app/PendingIntent;)Lcom/punchbox/v4/a/e;

    return-void
.end method

.method private d()V
    .locals 3

    new-instance v0, Lcom/punchbox/v4/h/k;

    invoke-direct {v0}, Lcom/punchbox/v4/h/k;-><init>()V

    iget v1, p0, Lcom/punchbox/engine/ak;->p:I

    iget-object v2, p0, Lcom/punchbox/engine/ak;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/punchbox/v4/h/k;->a(ILjava/lang/String;)I

    return-void
.end method

.method private e()V
    .locals 3

    new-instance v0, Lcom/punchbox/v4/h/k;

    invoke-direct {v0}, Lcom/punchbox/v4/h/k;-><init>()V

    iget-object v1, p0, Lcom/punchbox/engine/ak;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/punchbox/engine/ak;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/punchbox/v4/h/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private f()V
    .locals 2

    new-instance v0, Lcom/punchbox/v4/h/k;

    invoke-direct {v0}, Lcom/punchbox/v4/h/k;-><init>()V

    iget-object v1, p0, Lcom/punchbox/engine/ak;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/punchbox/v4/h/k;->f(Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/16 v6, 0x3e9

    const/4 v5, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/punchbox/engine/ak;->a:Lcom/punchbox/engine/PunchBoxService;

    iget-object v2, p0, Lcom/punchbox/engine/ak;->j:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/punchbox/engine/PunchBoxService;->a(Lcom/punchbox/engine/PunchBoxService;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/punchbox/engine/ak;->a:Lcom/punchbox/engine/PunchBoxService;

    invoke-static {v0}, Lcom/punchbox/engine/PunchBoxService;->b(Lcom/punchbox/engine/PunchBoxService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/engine/ak;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/punchbox/engine/ak;->a:Lcom/punchbox/engine/PunchBoxService;

    invoke-virtual {v1, v0}, Lcom/punchbox/engine/PunchBoxService;->startActivity(Landroid/content/Intent;)V

    :cond_0
    iget-object v0, p0, Lcom/punchbox/engine/ak;->a:Lcom/punchbox/engine/PunchBoxService;

    invoke-static {v0}, Lcom/punchbox/engine/PunchBoxService;->c(Lcom/punchbox/engine/PunchBoxService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/punchbox/engine/ak;->e:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/punchbox/engine/ak;->o:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/punchbox/engine/ak;->l:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/punchbox/engine/ak;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/punchbox/engine/ak;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/punchbox/engine/ak;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/engine/ak;->a:Lcom/punchbox/engine/PunchBoxService;

    invoke-static {v0}, Lcom/punchbox/engine/PunchBoxService;->c(Lcom/punchbox/engine/PunchBoxService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/punchbox/engine/ak;->a()V

    iget-object v0, p0, Lcom/punchbox/engine/ak;->c:Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/punchbox/engine/ak;->b:Lcom/punchbox/v4/a/e;

    invoke-virtual {v2}, Lcom/punchbox/v4/a/e;->a()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/punchbox/engine/ak;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_4
    const-string v0, "CoCoAdSDK-PunchBoxService"

    const-string v2, "MSG_BUILT_IN_APP_DOWNLOAD_START"

    invoke-static {v0, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/punchbox/engine/ak;->a:Lcom/punchbox/engine/PunchBoxService;

    invoke-virtual {v0}, Lcom/punchbox/engine/PunchBoxService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "random"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/punchbox/engine/ak;->d:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/punchbox/engine/ak;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    iput v0, p0, Lcom/punchbox/engine/ak;->g:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/punchbox/engine/ak;->e:Ljava/lang/String;

    const-string/jumbo v3, "rw"

    invoke-direct {v0, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/punchbox/engine/ak;->f:Ljava/io/RandomAccessFile;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    iget-boolean v0, p0, Lcom/punchbox/engine/ak;->n:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/punchbox/engine/ak;->a()V

    iget-object v0, p0, Lcom/punchbox/engine/ak;->c:Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/punchbox/engine/ak;->b:Lcom/punchbox/v4/a/e;

    invoke-virtual {v2}, Lcom/punchbox/v4/a/e;->a()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_5
    invoke-virtual {p0, v4}, Lcom/punchbox/engine/ak;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v0, p0, Lcom/punchbox/engine/ak;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_6

    :try_start_2
    iget-object v0, p0, Lcom/punchbox/engine/ak;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/punchbox/engine/ak;->d:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_6
    iget-object v0, p0, Lcom/punchbox/engine/ak;->a:Lcom/punchbox/engine/PunchBoxService;

    invoke-static {v0}, Lcom/punchbox/engine/PunchBoxService;->c(Lcom/punchbox/engine/PunchBoxService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iput-object v5, p0, Lcom/punchbox/engine/ak;->d:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/punchbox/engine/ak;->a:Lcom/punchbox/engine/PunchBoxService;

    invoke-static {v0}, Lcom/punchbox/engine/PunchBoxService;->c(Lcom/punchbox/engine/PunchBoxService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    iput-object v5, p0, Lcom/punchbox/engine/ak;->f:Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcom/punchbox/engine/ak;->a:Lcom/punchbox/engine/PunchBoxService;

    invoke-static {v0}, Lcom/punchbox/engine/PunchBoxService;->c(Lcom/punchbox/engine/PunchBoxService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "CoCoAdSDK-PunchBoxService"

    const-string v2, "MSG_BUILT_IN_APP_DOWNLOAD_ON_GOING"

    invoke-static {v0, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/punchbox/engine/ak;->d:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/punchbox/engine/ak;->i:[B

    const/4 v3, 0x0

    const/16 v4, 0x5000

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_11

    iget-object v2, p0, Lcom/punchbox/engine/ak;->f:Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/punchbox/engine/ak;->i:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    add-int/2addr v1, v0

    int-to-float v0, v1

    iget v2, p0, Lcom/punchbox/engine/ak;->g:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const-string v2, "CoCoAdSDK-PunchBoxService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "totalWriten:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mFileSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/punchbox/engine/ak;->g:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/punchbox/engine/ak;->g:I

    if-ne v1, v2, :cond_b

    const-string v0, "CoCoAdSDK-PunchBoxService"

    const-string v2, "Before send MSG_BUILT_IN_APP_DOWNLOAD_FINISH"

    invoke-static {v0, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/engine/ak;->c:Landroid/app/NotificationManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    iget-boolean v0, p0, Lcom/punchbox/engine/ak;->n:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/punchbox/engine/ak;->c()V

    iget-object v0, p0, Lcom/punchbox/engine/ak;->c:Landroid/app/NotificationManager;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/punchbox/engine/ak;->b:Lcom/punchbox/v4/a/e;

    invoke-virtual {v3}, Lcom/punchbox/v4/a/e;->a()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_8
    iget-object v0, p0, Lcom/punchbox/engine/ak;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/punchbox/engine/ak;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/engine/ak;->a:Lcom/punchbox/engine/PunchBoxService;

    invoke-static {v0}, Lcom/punchbox/engine/PunchBoxService;->c(Lcom/punchbox/engine/PunchBoxService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x3e9

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_3
    move-exception v0

    :try_start_4
    const-string v1, "CoCoAdSDK-PunchBoxService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/punchbox/util/PBLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, p0, Lcom/punchbox/engine/ak;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/punchbox/engine/ak;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/punchbox/engine/ak;->d:Ljava/io/InputStream;

    :cond_9
    iget-object v0, p0, Lcom/punchbox/engine/ak;->f:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/punchbox/engine/ak;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/punchbox/engine/ak;->f:Ljava/io/RandomAccessFile;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/punchbox/engine/ak;->a:Lcom/punchbox/engine/PunchBoxService;

    invoke-static {v0}, Lcom/punchbox/engine/PunchBoxService;->c(Lcom/punchbox/engine/PunchBoxService;)Landroid/os/Handler;

    move-result-object v0

    :goto_3
    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_b
    :try_start_6
    iget-boolean v2, p0, Lcom/punchbox/engine/ak;->n:Z

    if-eqz v2, :cond_7

    invoke-direct {p0, v0}, Lcom/punchbox/engine/ak;->a(I)V

    iget-object v0, p0, Lcom/punchbox/engine/ak;->c:Landroid/app/NotificationManager;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/punchbox/engine/ak;->b:Lcom/punchbox/v4/a/e;

    invoke-virtual {v3}, Lcom/punchbox/v4/a/e;->a()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    const-wide/16 v2, 0xc8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    :catch_4
    move-exception v0

    :try_start_7
    const-string v1, "CoCoAdSDK-PunchBoxService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterruptedException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/punchbox/util/PBLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    iget-object v0, p0, Lcom/punchbox/engine/ak;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/punchbox/engine/ak;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/punchbox/engine/ak;->d:Ljava/io/InputStream;

    :cond_c
    iget-object v0, p0, Lcom/punchbox/engine/ak;->f:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/punchbox/engine/ak;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/punchbox/engine/ak;->f:Ljava/io/RandomAccessFile;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    :cond_d
    :goto_4
    iget-object v0, p0, Lcom/punchbox/engine/ak;->a:Lcom/punchbox/engine/PunchBoxService;

    invoke-static {v0}, Lcom/punchbox/engine/PunchBoxService;->c(Lcom/punchbox/engine/PunchBoxService;)Landroid/os/Handler;

    move-result-object v0

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_9
    iget-object v1, p0, Lcom/punchbox/engine/ak;->d:Ljava/io/InputStream;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/punchbox/engine/ak;->d:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/punchbox/engine/ak;->d:Ljava/io/InputStream;

    :cond_e
    iget-object v1, p0, Lcom/punchbox/engine/ak;->f:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/punchbox/engine/ak;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/punchbox/engine/ak;->f:Ljava/io/RandomAccessFile;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    :cond_f
    :goto_5
    iget-object v1, p0, Lcom/punchbox/engine/ak;->a:Lcom/punchbox/engine/PunchBoxService;

    invoke-static {v1}, Lcom/punchbox/engine/PunchBoxService;->c(Lcom/punchbox/engine/PunchBoxService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    throw v0

    :pswitch_3
    const-string v0, "CoCoAdSDK-PunchBoxService"

    const-string v2, "MSG_PRE_DOWNLOAD_AD_ON_GOING"

    invoke-static {v0, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_6
    const/16 v2, 0x64

    if-ge v0, v2, :cond_10

    const-wide/16 v2, 0x3e8

    :try_start_a
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_5

    :goto_7
    add-int/lit8 v0, v0, 0x14

    invoke-direct {p0, v0}, Lcom/punchbox/engine/ak;->a(I)V

    goto :goto_6

    :cond_10
    invoke-direct {p0}, Lcom/punchbox/engine/ak;->c()V

    const-string v0, "CoCoAdSDK-PunchBoxService"

    const-string v2, "finish predown notification progress."

    invoke-static {v0, v2}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/engine/ak;->c:Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/punchbox/engine/ak;->b:Lcom/punchbox/v4/a/e;

    invoke-virtual {v2}, Lcom/punchbox/v4/a/e;->a()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-direct {p0}, Lcom/punchbox/engine/ak;->f()V

    invoke-direct {p0}, Lcom/punchbox/engine/ak;->d()V

    invoke-direct {p0}, Lcom/punchbox/engine/ak;->e()V

    iget-object v0, p0, Lcom/punchbox/engine/ak;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/punchbox/engine/ak;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/punchbox/engine/ak;->a:Lcom/punchbox/engine/PunchBoxService;

    invoke-static {v0}, Lcom/punchbox/engine/PunchBoxService;->c(Lcom/punchbox/engine/PunchBoxService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :catch_5
    move-exception v2

    goto :goto_7

    :catch_6
    move-exception v1

    const-string v2, "CoCoAdSDK-PunchBoxService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/punchbox/util/PBLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/punchbox/engine/ak;->d:Ljava/io/InputStream;

    iput-object v5, p0, Lcom/punchbox/engine/ak;->f:Ljava/io/RandomAccessFile;

    goto :goto_5

    :catch_7
    move-exception v0

    const-string v1, "CoCoAdSDK-PunchBoxService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/punchbox/util/PBLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/punchbox/engine/ak;->d:Ljava/io/InputStream;

    iput-object v5, p0, Lcom/punchbox/engine/ak;->f:Ljava/io/RandomAccessFile;

    goto/16 :goto_2

    :catch_8
    move-exception v0

    const-string v1, "CoCoAdSDK-PunchBoxService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/punchbox/util/PBLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/punchbox/engine/ak;->d:Ljava/io/InputStream;

    iput-object v5, p0, Lcom/punchbox/engine/ak;->f:Ljava/io/RandomAccessFile;

    goto/16 :goto_4

    :cond_11
    :try_start_b
    iget-object v0, p0, Lcom/punchbox/engine/ak;->d:Ljava/io/InputStream;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/punchbox/engine/ak;->d:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/punchbox/engine/ak;->d:Ljava/io/InputStream;

    :cond_12
    iget-object v0, p0, Lcom/punchbox/engine/ak;->f:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/punchbox/engine/ak;->f:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/punchbox/engine/ak;->f:Ljava/io/RandomAccessFile;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    :cond_13
    :goto_8
    iget-object v0, p0, Lcom/punchbox/engine/ak;->a:Lcom/punchbox/engine/PunchBoxService;

    invoke-static {v0}, Lcom/punchbox/engine/PunchBoxService;->c(Lcom/punchbox/engine/PunchBoxService;)Landroid/os/Handler;

    move-result-object v0

    goto/16 :goto_3

    :catch_9
    move-exception v0

    const-string v1, "CoCoAdSDK-PunchBoxService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/punchbox/util/PBLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/punchbox/engine/ak;->d:Ljava/io/InputStream;

    iput-object v5, p0, Lcom/punchbox/engine/ak;->f:Ljava/io/RandomAccessFile;

    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
