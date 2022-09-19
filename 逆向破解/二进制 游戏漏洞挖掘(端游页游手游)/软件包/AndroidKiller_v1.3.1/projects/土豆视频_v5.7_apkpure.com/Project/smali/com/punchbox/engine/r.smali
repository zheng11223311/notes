.class public Lcom/punchbox/engine/r;
.super Ljava/lang/Object;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:I

.field private E:Ljava/lang/Runnable;

.field private F:Ljava/lang/Runnable;

.field private a:Landroid/content/Context;

.field private b:Landroid/net/Uri;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:Ljava/io/RandomAccessFile;

.field private h:Landroid/os/Handler;

.field private i:Landroid/os/Handler;

.field private j:Landroid/os/HandlerThread;

.field private k:Ljava/util/concurrent/ExecutorService;

.field private l:Ljava/lang/String;

.field private m:Lcom/punchbox/v4/a/e;

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Landroid/content/pm/PackageInfo;

.field private r:I

.field private s:I

.field private t:I

.field private u:J

.field private final v:I

.field private w:Lcom/punchbox/engine/w;

.field private x:Z

.field private y:Ljava/lang/Object;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;Lcom/punchbox/engine/w;JILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/punchbox/engine/r;->u:J

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/punchbox/engine/r;->y:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/punchbox/engine/r;->z:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/punchbox/engine/r;->A:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/punchbox/engine/r;->B:Z

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/punchbox/engine/r;->C:Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/punchbox/engine/r;->D:I

    new-instance v2, Lcom/punchbox/engine/s;

    invoke-direct {v2, p0}, Lcom/punchbox/engine/s;-><init>(Lcom/punchbox/engine/r;)V

    iput-object v2, p0, Lcom/punchbox/engine/r;->E:Ljava/lang/Runnable;

    new-instance v2, Lcom/punchbox/engine/t;

    invoke-direct {v2, p0}, Lcom/punchbox/engine/t;-><init>(Lcom/punchbox/engine/r;)V

    iput-object v2, p0, Lcom/punchbox/engine/r;->F:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/punchbox/engine/r;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/punchbox/engine/r;->b:Landroid/net/Uri;

    iget-object v2, p0, Lcom/punchbox/engine/r;->b:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/punchbox/engine/r;->c:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, p0, Lcom/punchbox/engine/r;->e:I

    invoke-static {}, Lcom/punchbox/util/i;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/punchbox/engine/r;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/punchbox/engine/r;->h:Landroid/os/Handler;

    iput-object p4, p0, Lcom/punchbox/engine/r;->k:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/punchbox/engine/r;->k:Ljava/util/concurrent/ExecutorService;

    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v2

    iput v2, p0, Lcom/punchbox/engine/r;->v:I

    iput-object p5, p0, Lcom/punchbox/engine/r;->w:Lcom/punchbox/engine/w;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/punchbox/engine/r;->x:Z

    iput-wide p6, p0, Lcom/punchbox/engine/r;->u:J

    iput p8, p0, Lcom/punchbox/engine/r;->e:I

    iput-object p9, p0, Lcom/punchbox/engine/r;->l:Ljava/lang/String;

    iget-object v2, p0, Lcom/punchbox/engine/r;->l:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    iput v2, p0, Lcom/punchbox/engine/r;->n:I

    new-instance v2, Lcom/punchbox/v4/a/e;

    iget-object v3, p0, Lcom/punchbox/engine/r;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/punchbox/v4/a/e;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/punchbox/engine/r;->m:Lcom/punchbox/v4/a/e;

    iput p10, p0, Lcom/punchbox/engine/r;->f:I

    iput-object p11, p0, Lcom/punchbox/engine/r;->o:Ljava/lang/String;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/punchbox/engine/r;->p:Ljava/lang/String;

    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/punchbox/engine/r;->A:Z

    move/from16 v0, p14

    iput-boolean v0, p0, Lcom/punchbox/engine/r;->B:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;Lcom/punchbox/engine/w;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 15

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    sget v10, Lcom/punchbox/engine/e;->a:I

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v9, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-direct/range {v0 .. v14}, Lcom/punchbox/engine/r;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;Lcom/punchbox/engine/w;JILjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private A()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/punchbox/engine/i;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "full_path"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/punchbox/engine/r;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/punchbox/engine/r;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/punchbox/engine/r;->q:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_0

    const-string v1, "pkg_name"

    iget-object v2, p0, Lcom/punchbox/engine/r;->q:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/punchbox/engine/r;->a:Landroid/content/Context;

    iget v2, p0, Lcom/punchbox/engine/r;->n:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/engine/r;->m:Lcom/punchbox/v4/a/e;

    sget-object v2, Lcom/punchbox/v4/o/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/punchbox/v4/a/e;->b(Ljava/lang/CharSequence;)Lcom/punchbox/v4/a/e;

    iget-object v1, p0, Lcom/punchbox/engine/r;->m:Lcom/punchbox/v4/a/e;

    invoke-virtual {v1, v4, v4, v4}, Lcom/punchbox/v4/a/e;->a(IIZ)Lcom/punchbox/v4/a/e;

    iget-object v1, p0, Lcom/punchbox/engine/r;->m:Lcom/punchbox/v4/a/e;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/punchbox/v4/a/e;->a(Z)Lcom/punchbox/v4/a/e;

    iget-object v1, p0, Lcom/punchbox/engine/r;->m:Lcom/punchbox/v4/a/e;

    invoke-virtual {v1, v0}, Lcom/punchbox/v4/a/e;->a(Landroid/app/PendingIntent;)Lcom/punchbox/v4/a/e;

    iget-object v0, p0, Lcom/punchbox/engine/r;->m:Lcom/punchbox/v4/a/e;

    const v1, 0x1080082

    invoke-virtual {v0, v1}, Lcom/punchbox/v4/a/e;->a(I)Lcom/punchbox/v4/a/e;

    return-void
.end method

.method static synthetic A(Lcom/punchbox/engine/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/punchbox/engine/r;->z()V

    return-void
.end method

.method static synthetic B(Lcom/punchbox/engine/r;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/engine/r;->y:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic C(Lcom/punchbox/engine/r;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/punchbox/engine/r;->x:Z

    return v0
.end method

.method private a(JIJ)I
    .locals 4

    new-instance v0, Lcom/punchbox/v4/h/j;

    invoke-direct {v0}, Lcom/punchbox/v4/h/j;-><init>()V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "buffer_received"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "download_index"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/punchbox/v4/h/j;->a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/punchbox/engine/r;)I
    .locals 1

    iget v0, p0, Lcom/punchbox/engine/r;->v:I

    return v0
.end method

.method static synthetic a(Lcom/punchbox/engine/r;JIJ)I
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/punchbox/engine/r;->a(JIJ)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/punchbox/engine/r;Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;
    .locals 0

    iput-object p1, p0, Lcom/punchbox/engine/r;->q:Landroid/content/pm/PackageInfo;

    return-object p1
.end method

.method static synthetic a(Lcom/punchbox/engine/r;Ljava/io/RandomAccessFile;)Ljava/io/RandomAccessFile;
    .locals 0

    iput-object p1, p0, Lcom/punchbox/engine/r;->g:Ljava/io/RandomAccessFile;

    return-object p1
.end method

.method private a(I)V
    .locals 0

    invoke-direct {p0}, Lcom/punchbox/engine/r;->s()V

    invoke-direct {p0, p1}, Lcom/punchbox/engine/r;->b(I)V

    return-void
.end method

.method private a(JIJJ)V
    .locals 2

    new-instance v0, Lcom/punchbox/engine/DownloadSubData;

    invoke-direct {v0}, Lcom/punchbox/engine/DownloadSubData;-><init>()V

    iput-wide p1, v0, Lcom/punchbox/engine/DownloadSubData;->download_id:J

    iput p3, v0, Lcom/punchbox/engine/DownloadSubData;->download_index:I

    iput-wide p4, v0, Lcom/punchbox/engine/DownloadSubData;->from_position:J

    iput-wide p6, v0, Lcom/punchbox/engine/DownloadSubData;->to_position:J

    new-instance v1, Lcom/punchbox/v4/h/j;

    invoke-direct {v1}, Lcom/punchbox/v4/h/j;-><init>()V

    invoke-virtual {v1, v0}, Lcom/punchbox/v4/h/j;->a(Lcom/punchbox/engine/DownloadSubData;)J

    return-void
.end method

.method static synthetic a(Lcom/punchbox/engine/r;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/punchbox/engine/r;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/punchbox/engine/r;Lorg/apache/http/client/methods/HttpGet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/punchbox/engine/r;->a(Lorg/apache/http/client/methods/HttpGet;II)V

    return-void
.end method

.method private a(Lorg/apache/http/client/methods/HttpGet;II)V
    .locals 3

    const-string v0, "Accept"

    const-string/jumbo v1, "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Type"

    const-string/jumbo v1, "text/html; charset=utf-8"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Range"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept-Encoding"

    const-string v1, "gzip, deflate, sdch"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept-Language"

    const-string v1, "en-US,en;q=0.8,zh;q=0.6,zh-CN;q=0.4"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DNT"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/punchbox/engine/r;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/punchbox/engine/r;->z:Z

    return p1
.end method

.method static synthetic b(Lcom/punchbox/engine/r;I)I
    .locals 0

    iput p1, p0, Lcom/punchbox/engine/r;->f:I

    return p1
.end method

.method private b(J)Landroid/database/Cursor;
    .locals 1

    new-instance v0, Lcom/punchbox/v4/h/i;

    invoke-direct {v0}, Lcom/punchbox/v4/h/i;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/punchbox/v4/h/i;->a(J)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method private b(I)V
    .locals 6

    iput p1, p0, Lcom/punchbox/engine/r;->f:I

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "download_status"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v1, Lcom/punchbox/v4/h/i;

    invoke-direct {v1}, Lcom/punchbox/v4/h/i;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/punchbox/engine/r;->u:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/punchbox/v4/h/i;->a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/punchbox/engine/r;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/punchbox/engine/r;->B:Z

    return v0
.end method

.method static synthetic c(Lcom/punchbox/engine/r;)J
    .locals 2

    iget-wide v0, p0, Lcom/punchbox/engine/r;->u:J

    return-wide v0
.end method

.method private c(I)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/punchbox/engine/r;->B:Z

    if-nez v0, :cond_0

    const-string v0, "CoCoAdSDK-DownloadRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Progress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/punchbox/engine/i;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "id"

    iget v2, p0, Lcom/punchbox/engine/r;->n:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/punchbox/engine/r;->a:Landroid/content/Context;

    const/high16 v2, 0x8000000

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/engine/r;->m:Lcom/punchbox/v4/a/e;

    invoke-virtual {v1, v0}, Lcom/punchbox/v4/a/e;->b(Landroid/app/PendingIntent;)Lcom/punchbox/v4/a/e;

    iget-object v0, p0, Lcom/punchbox/engine/r;->m:Lcom/punchbox/v4/a/e;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1, v3}, Lcom/punchbox/v4/a/e;->a(IIZ)Lcom/punchbox/v4/a/e;

    return-void
.end method

.method static synthetic c(Lcom/punchbox/engine/r;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/punchbox/engine/r;->a(I)V

    return-void
.end method

.method static synthetic d(Lcom/punchbox/engine/r;)I
    .locals 1

    iget v0, p0, Lcom/punchbox/engine/r;->e:I

    return v0
.end method

.method static synthetic d(Lcom/punchbox/engine/r;I)I
    .locals 0

    iput p1, p0, Lcom/punchbox/engine/r;->e:I

    return p1
.end method

.method static synthetic e(Lcom/punchbox/engine/r;)Lcom/punchbox/v4/a/e;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/engine/r;->m:Lcom/punchbox/v4/a/e;

    return-object v0
.end method

.method static synthetic f(Lcom/punchbox/engine/r;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/engine/r;->h:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lcom/punchbox/engine/r;)I
    .locals 2

    iget v0, p0, Lcom/punchbox/engine/r;->r:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/punchbox/engine/r;->r:I

    return v0
.end method

.method static synthetic h(Lcom/punchbox/engine/r;)I
    .locals 1

    iget v0, p0, Lcom/punchbox/engine/r;->r:I

    return v0
.end method

.method static synthetic i(Lcom/punchbox/engine/r;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/engine/r;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lcom/punchbox/engine/r;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/engine/r;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/punchbox/engine/r;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/engine/r;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/punchbox/engine/r;)Landroid/content/pm/PackageInfo;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/engine/r;->q:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method static synthetic m(Lcom/punchbox/engine/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/punchbox/engine/r;->A()V

    return-void
.end method

.method static synthetic n(Lcom/punchbox/engine/r;)Z
    .locals 1

    invoke-direct {p0}, Lcom/punchbox/engine/r;->t()Z

    move-result v0

    return v0
.end method

.method static synthetic o(Lcom/punchbox/engine/r;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/punchbox/engine/r;->z:Z

    return v0
.end method

.method static synthetic p(Lcom/punchbox/engine/r;)I
    .locals 2

    iget v0, p0, Lcom/punchbox/engine/r;->s:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/punchbox/engine/r;->s:I

    return v0
.end method

.method static synthetic q(Lcom/punchbox/engine/r;)I
    .locals 1

    iget v0, p0, Lcom/punchbox/engine/r;->s:I

    return v0
.end method

.method static synthetic r(Lcom/punchbox/engine/r;)I
    .locals 2

    iget v0, p0, Lcom/punchbox/engine/r;->t:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/punchbox/engine/r;->t:I

    return v0
.end method

.method static synthetic s(Lcom/punchbox/engine/r;)I
    .locals 1

    iget v0, p0, Lcom/punchbox/engine/r;->t:I

    return v0
.end method

.method private s()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/punchbox/engine/r;->r:I

    iput v0, p0, Lcom/punchbox/engine/r;->s:I

    iput v0, p0, Lcom/punchbox/engine/r;->t:I

    return-void
.end method

.method static synthetic t(Lcom/punchbox/engine/r;)I
    .locals 2

    iget v0, p0, Lcom/punchbox/engine/r;->D:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/punchbox/engine/r;->D:I

    return v0
.end method

.method private t()Z
    .locals 2

    iget v0, p0, Lcom/punchbox/engine/r;->r:I

    iget v1, p0, Lcom/punchbox/engine/r;->s:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/punchbox/engine/r;->t:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/punchbox/engine/r;->v:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic u(Lcom/punchbox/engine/r;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/engine/r;->F:Ljava/lang/Runnable;

    return-object v0
.end method

.method private u()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/punchbox/engine/r;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/punchbox/engine/r;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/punchbox/engine/r;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/punchbox/engine/r;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/punchbox/engine/r;->F:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/punchbox/engine/r;->i:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/punchbox/engine/r;->j:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/punchbox/engine/r;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v2, p0, Lcom/punchbox/engine/r;->j:Landroid/os/HandlerThread;

    :cond_1
    return-void
.end method

.method static synthetic v(Lcom/punchbox/engine/r;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/engine/r;->i:Landroid/os/Handler;

    return-object v0
.end method

.method private v()V
    .locals 6

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "total_size"

    iget v2, p0, Lcom/punchbox/engine/r;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v1, Lcom/punchbox/v4/h/i;

    invoke-direct {v1}, Lcom/punchbox/v4/h/i;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/punchbox/engine/r;->u:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/punchbox/v4/h/i;->a(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic w(Lcom/punchbox/engine/r;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/engine/r;->b:Landroid/net/Uri;

    return-object v0
.end method

.method private w()V
    .locals 14

    iget v0, p0, Lcom/punchbox/engine/r;->e:I

    iget v1, p0, Lcom/punchbox/engine/r;->v:I

    div-int v10, v0, v1

    const-wide/16 v8, 0x0

    invoke-direct {p0}, Lcom/punchbox/engine/r;->x()Landroid/database/Cursor;

    move-result-object v11

    const-string v0, "CoCoAdSDK-DownloadRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTotalSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/punchbox/engine/r;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", perPayloadSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDownloadTableId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/punchbox/engine/r;->u:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v11, :cond_1

    const/4 v3, 0x0

    :goto_0
    iget v0, p0, Lcom/punchbox/engine/r;->v:I

    if-ge v3, v0, :cond_5

    mul-int v0, v3, v10

    int-to-long v4, v0

    add-int/lit8 v0, v3, 0x1

    mul-int/2addr v0, v10

    add-int/lit8 v0, v0, -0x1

    int-to-long v6, v0

    iget v0, p0, Lcom/punchbox/engine/r;->v:I

    add-int/lit8 v0, v0, -0x1

    if-ne v3, v0, :cond_0

    iget v0, p0, Lcom/punchbox/engine/r;->e:I

    add-int/lit8 v0, v0, -0x1

    int-to-long v6, v0

    :cond_0
    iget-wide v1, p0, Lcom/punchbox/engine/r;->u:J

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/punchbox/engine/r;->a(JIJJ)V

    iget-object v0, p0, Lcom/punchbox/engine/r;->k:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/punchbox/engine/v;

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/punchbox/engine/v;-><init>(Lcom/punchbox/engine/r;IJJJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "from_position"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string/jumbo v0, "to_position"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v0, "buffer_received"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-string v0, "download_index"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    add-long v0, v4, v8

    const-wide/16 v12, 0x1

    add-long/2addr v12, v6

    cmp-long v0, v0, v12

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/punchbox/engine/r;->i:Landroid/os/Handler;

    const/4 v1, 0x0

    sub-long v4, v6, v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    long-to-int v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v0, p0, Lcom/punchbox/engine/r;->i:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/punchbox/engine/r;->k:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/punchbox/engine/v;

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/punchbox/engine/v;-><init>(Lcom/punchbox/engine/r;IJJJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_4
    if-eqz v11, :cond_5

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_5
    return-void
.end method

.method private x()Landroid/database/Cursor;
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Lcom/punchbox/v4/h/j;

    invoke-direct {v1}, Lcom/punchbox/v4/h/j;-><init>()V

    iget-wide v2, p0, Lcom/punchbox/engine/r;->u:J

    invoke-virtual {v1, v2, v3}, Lcom/punchbox/v4/h/j;->a(J)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic x(Lcom/punchbox/engine/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/punchbox/engine/r;->v()V

    return-void
.end method

.method static synthetic y(Lcom/punchbox/engine/r;)Ljava/io/RandomAccessFile;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/engine/r;->g:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method private y()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/punchbox/engine/r;->m:Lcom/punchbox/v4/a/e;

    iget-object v1, p0, Lcom/punchbox/engine/r;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/punchbox/v4/a/e;->a(Ljava/lang/CharSequence;)Lcom/punchbox/v4/a/e;

    iget-object v0, p0, Lcom/punchbox/engine/r;->m:Lcom/punchbox/v4/a/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v3, v1}, Lcom/punchbox/v4/a/e;->a(IIZ)Lcom/punchbox/v4/a/e;

    iget-object v0, p0, Lcom/punchbox/engine/r;->m:Lcom/punchbox/v4/a/e;

    sget-object v1, Lcom/punchbox/v4/o/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/punchbox/v4/a/e;->b(Ljava/lang/CharSequence;)Lcom/punchbox/v4/a/e;

    iget-object v0, p0, Lcom/punchbox/engine/r;->m:Lcom/punchbox/v4/a/e;

    const v1, 0x1080081

    invoke-virtual {v0, v1}, Lcom/punchbox/v4/a/e;->a(I)Lcom/punchbox/v4/a/e;

    iget-object v0, p0, Lcom/punchbox/engine/r;->m:Lcom/punchbox/v4/a/e;

    iget-object v1, p0, Lcom/punchbox/engine/r;->a:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-static {v1, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/punchbox/v4/a/e;->a(Landroid/app/PendingIntent;)Lcom/punchbox/v4/a/e;

    iget v0, p0, Lcom/punchbox/engine/r;->f:I

    sget v1, Lcom/punchbox/engine/e;->a:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/punchbox/engine/r;->m:Lcom/punchbox/v4/a/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/punchbox/v4/o/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/punchbox/engine/r;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/punchbox/v4/a/e;->c(Ljava/lang/CharSequence;)Lcom/punchbox/v4/a/e;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/punchbox/engine/r;->m:Lcom/punchbox/v4/a/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/punchbox/v4/a/e;->c(Ljava/lang/CharSequence;)Lcom/punchbox/v4/a/e;

    goto :goto_0
.end method

.method private z()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/punchbox/engine/r;->m:Lcom/punchbox/v4/a/e;

    sget-object v1, Lcom/punchbox/v4/o/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/punchbox/v4/a/e;->b(Ljava/lang/CharSequence;)Lcom/punchbox/v4/a/e;

    iget-object v0, p0, Lcom/punchbox/engine/r;->m:Lcom/punchbox/v4/a/e;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v2, v2}, Lcom/punchbox/v4/a/e;->a(IIZ)Lcom/punchbox/v4/a/e;

    return-void
.end method

.method static synthetic z(Lcom/punchbox/engine/r;)V
    .locals 0

    invoke-direct {p0}, Lcom/punchbox/engine/r;->w()V

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    iget v0, p0, Lcom/punchbox/engine/r;->n:I

    return v0
.end method

.method a(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    const-string v0, "CoCoAdSDK-DownloadRequest"

    const-string v1, "DB operation error"

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/punchbox/engine/e;->b:I

    invoke-direct {p0, v0}, Lcom/punchbox/engine/r;->a(I)V

    :goto_0
    return-void

    :cond_0
    iput-wide p1, p0, Lcom/punchbox/engine/r;->u:J

    goto :goto_0
.end method

.method a(Lcom/punchbox/engine/w;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/engine/r;->w:Lcom/punchbox/engine/w;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/punchbox/engine/r;->o:Ljava/lang/String;

    return-void
.end method

.method a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/punchbox/engine/r;->C:Z

    return-void
.end method

.method b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/punchbox/engine/r;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/engine/r;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/engine/r;->c:Ljava/lang/String;

    return-object v0
.end method

.method d()Lcom/punchbox/engine/w;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/engine/r;->w:Lcom/punchbox/engine/w;

    return-object v0
.end method

.method e()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/engine/r;->b:Landroid/net/Uri;

    return-object v0
.end method

.method f()J
    .locals 2

    iget-wide v0, p0, Lcom/punchbox/engine/r;->u:J

    return-wide v0
.end method

.method g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/engine/r;->l:Ljava/lang/String;

    return-object v0
.end method

.method h()I
    .locals 1

    iget v0, p0, Lcom/punchbox/engine/r;->f:I

    return v0
.end method

.method i()Landroid/content/pm/PackageInfo;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/engine/r;->q:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/punchbox/engine/r;->A:Z

    return v0
.end method

.method k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/punchbox/engine/r;->B:Z

    return v0
.end method

.method l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/punchbox/engine/r;->o:Ljava/lang/String;

    return-object v0
.end method

.method m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/punchbox/engine/r;->C:Z

    return v0
.end method

.method n()V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "CoCoAdSDK-DownloadRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "postDownloadRequest, mDownloadTableId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/punchbox/engine/r;->u:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/punchbox/engine/r;->u:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const-string v0, "CoCoAdSDK-DownloadRequest"

    const-string v1, "postDownloadRequest, mDownloadTableId is smaller than zero,we didn\'t need download,make sure DB operator is right."

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/punchbox/engine/r;->u:J

    invoke-direct {p0, v0, v1}, Lcom/punchbox/engine/r;->b(J)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "CoCoAdSDK-DownloadRequest"

    const-string v1, "postDownloadRequest, mDownloadTableId is bigger than zero,but can\'t query any record from DB.give up download."

    invoke-static {v0, v1}, Lcom/punchbox/util/PBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v0, "total_size"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/punchbox/engine/r;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DownloadRequest-Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/punchbox/engine/r;->j:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/punchbox/engine/r;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/punchbox/engine/u;

    iget-object v1, p0, Lcom/punchbox/engine/r;->j:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/punchbox/engine/u;-><init>(Lcom/punchbox/engine/r;Landroid/os/Looper;Lcom/punchbox/engine/s;)V

    iput-object v0, p0, Lcom/punchbox/engine/r;->i:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/punchbox/engine/r;->y()V

    iget-object v0, p0, Lcom/punchbox/engine/r;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/punchbox/engine/r;->m:Lcom/punchbox/v4/a/e;

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    iget-object v1, p0, Lcom/punchbox/engine/r;->y:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/punchbox/engine/r;->x:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget v0, p0, Lcom/punchbox/engine/r;->e:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/punchbox/engine/r;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/punchbox/engine/r;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/punchbox/engine/r;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/punchbox/engine/r;->F:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method o()V
    .locals 0

    invoke-direct {p0}, Lcom/punchbox/engine/r;->u()V

    return-void
.end method

.method p()V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/punchbox/engine/r;->y:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/punchbox/engine/r;->x:Z

    if-ne v0, v2, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/punchbox/engine/r;->x:Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method q()J
    .locals 4

    new-instance v1, Lcom/punchbox/engine/DownloadData;

    invoke-direct {v1}, Lcom/punchbox/engine/DownloadData;-><init>()V

    iget-object v0, p0, Lcom/punchbox/engine/r;->c:Ljava/lang/String;

    iput-object v0, v1, Lcom/punchbox/engine/DownloadData;->file_name:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/punchbox/engine/r;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/punchbox/engine/r;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/punchbox/engine/DownloadData;->file_path:Ljava/lang/String;

    iget-object v0, p0, Lcom/punchbox/engine/r;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/punchbox/engine/DownloadData;->url:Ljava/lang/String;

    iget-object v0, p0, Lcom/punchbox/engine/r;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, v1, Lcom/punchbox/engine/DownloadData;->adInfo:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/punchbox/engine/DownloadData;->network_type:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/punchbox/engine/DownloadData;->request_time:J

    iget-object v0, p0, Lcom/punchbox/engine/r;->o:Ljava/lang/String;

    iput-object v0, v1, Lcom/punchbox/engine/DownloadData;->pkg_name:Ljava/lang/String;

    new-instance v0, Lcom/punchbox/v4/h/i;

    invoke-direct {v0}, Lcom/punchbox/v4/h/i;-><init>()V

    invoke-virtual {v0, v1}, Lcom/punchbox/v4/h/i;->a(Lcom/punchbox/engine/DownloadData;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/punchbox/engine/r;->l:Ljava/lang/String;

    goto :goto_0
.end method

.method r()V
    .locals 4

    new-instance v0, Lcom/punchbox/v4/h/i;

    invoke-direct {v0}, Lcom/punchbox/v4/h/i;-><init>()V

    iget-wide v2, p0, Lcom/punchbox/engine/r;->u:J

    invoke-virtual {v0, v2, v3}, Lcom/punchbox/v4/h/i;->b(J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/engine/r;->b:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", FileName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/engine/r;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFolderPath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/engine/r;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/punchbox/engine/r;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", PRI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/punchbox/engine/r;->w:Lcom/punchbox/engine/w;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", DownloadStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/punchbox/engine/r;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDownloadFromWiFi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/punchbox/engine/r;->A:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
