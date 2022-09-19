.class Lcn/domob/android/c/h;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field protected static final a:Ljava/lang/String;

.field static b:Ljava/lang/String; = null

.field static c:Ljava/lang/String; = null

.field protected static final d:Ljava/lang/String; = ".temp"

.field static final e:I = 0x200000

.field static final f:I = 0x500000

.field private static g:Lcn/domob/android/ads/c/f;

.field private static final k:Ljava/lang/String;


# instance fields
.field private h:Lcn/domob/android/c/i;

.field private i:Landroid/content/Context;

.field private j:Ljava/lang/String;

.field private l:J

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private p:Z

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcn/domob/android/ads/c/f;

    const-class v1, Lcn/domob/android/c/h;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/ads/c/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/c/h;->g:Lcn/domob/android/ads/c/f;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/domob/android/ads/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AppDownload/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/c/h;->k:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/domob/android/ads/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ResDownload/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/c/h;->a:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "sd\u5361"

    sput-object v0, Lcn/domob/android/c/h;->b:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, "\u5185\u5b58\u5361"

    sput-object v0, Lcn/domob/android/c/h;->c:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZILcn/domob/android/c/i;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 18
    iput-object v0, p0, Lcn/domob/android/c/h;->h:Lcn/domob/android/c/i;

    .line 19
    iput-object v0, p0, Lcn/domob/android/c/h;->i:Landroid/content/Context;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcn/domob/android/ads/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AppDownload/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/c/h;->j:Ljava/lang/String;

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/domob/android/c/h;->l:J

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/c/h;->m:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/c/h;->n:Ljava/lang/String;

    .line 28
    const-string v0, ".apk"

    iput-object v0, p0, Lcn/domob/android/c/h;->o:Ljava/lang/String;

    .line 29
    iput-boolean v4, p0, Lcn/domob/android/c/h;->p:Z

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/c/h;->q:Ljava/lang/String;

    .line 32
    iput-boolean v5, p0, Lcn/domob/android/c/h;->r:Z

    .line 37
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/domob/android/c/h;->s:J

    .line 41
    iput-object p6, p0, Lcn/domob/android/c/h;->h:Lcn/domob/android/c/i;

    .line 42
    iput-object p1, p0, Lcn/domob/android/c/h;->i:Landroid/content/Context;

    .line 43
    iput-object p3, p0, Lcn/domob/android/c/h;->q:Ljava/lang/String;

    .line 44
    const/4 v0, 0x3

    if-ne p5, v0, :cond_1

    .line 45
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 47
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/c/h;->m:Ljava/lang/String;

    .line 48
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/c/h;->j:Ljava/lang/String;

    .line 49
    iput-boolean v4, p0, Lcn/domob/android/c/h;->r:Z

    .line 62
    :cond_0
    :goto_0
    sget-object v0, Lcn/domob/android/c/h;->g:Lcn/domob/android/ads/c/f;

    const-string v1, "download path currentDownloadPath:%s storageName:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcn/domob/android/c/h;->j:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcn/domob/android/c/h;->m:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 63
    return-void

    .line 53
    :cond_1
    if-eqz p4, :cond_2

    .line 54
    iput-object p2, p0, Lcn/domob/android/c/h;->m:Ljava/lang/String;

    .line 55
    sget-object v0, Lcn/domob/android/c/h;->a:Ljava/lang/String;

    iput-object v0, p0, Lcn/domob/android/c/h;->j:Ljava/lang/String;

    .line 56
    iput-boolean v4, p0, Lcn/domob/android/c/h;->r:Z

    goto :goto_0

    .line 58
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/c/h;->m:Ljava/lang/String;

    .line 59
    sget-object v0, Lcn/domob/android/c/h;->k:Ljava/lang/String;

    iput-object v0, p0, Lcn/domob/android/c/h;->j:Ljava/lang/String;

    .line 60
    iput-boolean v5, p0, Lcn/domob/android/c/h;->r:Z

    goto :goto_0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 99
    :try_start_0
    iget-object v0, p0, Lcn/domob/android/c/h;->q:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcn/domob/android/c/h;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcn/domob/android/c/h;->l:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    invoke-direct {p0}, Lcn/domob/android/c/h;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    :goto_1
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    sget-object v1, Lcn/domob/android/c/h;->g:Lcn/domob/android/ads/c/f;

    invoke-virtual {v1, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 107
    :cond_1
    invoke-direct {p0}, Lcn/domob/android/c/h;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 256
    const/4 v1, 0x0

    .line 257
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 258
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".temp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 262
    iget-object v1, p0, Lcn/domob/android/c/h;->h:Lcn/domob/android/c/i;

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcn/domob/android/c/h;->h:Lcn/domob/android/c/i;

    invoke-interface {v1, p1}, Lcn/domob/android/c/i;->a(Ljava/lang/String;)V

    .line 276
    :cond_0
    :goto_0
    return v0

    .line 266
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 268
    sget-object v1, Lcn/domob/android/c/h;->g:Lcn/domob/android/ads/c/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "\u3000download size="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "softSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcn/domob/android/c/h;->l:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    iput-boolean v0, p0, Lcn/domob/android/c/h;->p:Z

    .line 272
    iget-object v1, p0, Lcn/domob/android/c/h;->h:Lcn/domob/android/c/i;

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcn/domob/android/c/h;->h:Lcn/domob/android/c/i;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcn/domob/android/c/i;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private c()Z
    .locals 13

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 122
    const-string v0, ""

    .line 127
    :try_start_0
    iget-object v2, p0, Lcn/domob/android/c/h;->q:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcn/domob/android/c/h;->a(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/domob/android/c/h;->l:J

    .line 129
    iget-wide v2, p0, Lcn/domob/android/c/h;->l:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 130
    iget-object v0, p0, Lcn/domob/android/c/h;->h:Lcn/domob/android/c/i;

    const-string/jumbo v1, "\u8fde\u63a5\u4e0b\u8f7d\u5730\u5740\u4fe1\u606f\u9519\u8bef"

    invoke-interface {v0, v1}, Lcn/domob/android/c/i;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :goto_0
    return v8

    .line 134
    :catch_0
    move-exception v0

    .line 135
    iget-object v0, p0, Lcn/domob/android/c/h;->h:Lcn/domob/android/c/i;

    const-string/jumbo v1, "\u8fde\u63a5\u4e0b\u8f7d\u5730\u5740\u9519\u8bef"

    invoke-interface {v0, v1}, Lcn/domob/android/c/i;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_0
    invoke-static {}, Lcn/domob/android/c/h;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 141
    new-instance v2, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v4, v3

    .line 147
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    .line 149
    mul-long/2addr v4, v2

    .line 151
    sget-object v2, Lcn/domob/android/c/h;->g:Lcn/domob/android/ads/c/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sd availaSize="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v9, "softsize="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v10, p0, Lcn/domob/android/c/h;->l:J

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iget-wide v2, p0, Lcn/domob/android/c/h;->l:J

    const-wide/32 v10, 0x200000

    add-long/2addr v2, v10

    cmp-long v2, v4, v2

    if-lez v2, :cond_1

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/domob/android/c/h;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {v0}, Lcn/domob/android/c/h;->c(Ljava/lang/String;)Z

    move-object v2, v0

    move v0, v1

    :goto_1
    move v12, v0

    move-object v0, v2

    move v2, v12

    .line 171
    :goto_2
    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcn/domob/android/c/h;->r:Z

    if-eqz v2, :cond_4

    .line 173
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 174
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v6, v0

    .line 176
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v2, v0

    .line 177
    mul-long/2addr v6, v2

    .line 178
    sget-object v0, Lcn/domob/android/c/h;->g:Lcn/domob/android/ads/c/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rom"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    iget-wide v2, p0, Lcn/domob/android/c/h;->l:J

    const-wide/32 v10, 0x500000

    add-long/2addr v2, v10

    cmp-long v0, v6, v2

    if-gez v0, :cond_3

    .line 182
    iget-object v1, p0, Lcn/domob/android/c/h;->h:Lcn/domob/android/c/i;

    iget-wide v2, p0, Lcn/domob/android/c/h;->l:J

    invoke-interface/range {v1 .. v7}, Lcn/domob/android/c/i;->a(JJJ)V

    goto/16 :goto_0

    .line 161
    :cond_1
    iget-boolean v2, p0, Lcn/domob/android/c/h;->r:Z

    if-nez v2, :cond_7

    .line 162
    iget-object v1, p0, Lcn/domob/android/c/h;->h:Lcn/domob/android/c/i;

    iget-wide v2, p0, Lcn/domob/android/c/h;->l:J

    invoke-interface/range {v1 .. v7}, Lcn/domob/android/c/i;->a(JJJ)V

    goto/16 :goto_0

    .line 165
    :cond_2
    iget-boolean v2, p0, Lcn/domob/android/c/h;->r:Z

    if-nez v2, :cond_6

    .line 166
    iget-object v0, p0, Lcn/domob/android/c/h;->h:Lcn/domob/android/c/i;

    invoke-interface {v0}, Lcn/domob/android/c/i;->b()V

    goto/16 :goto_0

    .line 185
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/domob/android/c/h;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcn/domob/android/c/h;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-static {v0}, Lcn/domob/android/c/h;->c(Ljava/lang/String;)Z

    .line 188
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod 777 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    .line 193
    :try_start_1
    invoke-virtual {v3, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 194
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    .line 195
    if-nez v2, :cond_5

    .line 210
    :cond_4
    :goto_3
    iget-object v2, p0, Lcn/domob/android/c/h;->h:Lcn/domob/android/c/i;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcn/domob/android/c/h;->m:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".temp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcn/domob/android/c/i;->c(Ljava/lang/String;)V

    move v8, v1

    .line 211
    goto/16 :goto_0

    .line 198
    :cond_5
    :try_start_2
    iget-object v2, p0, Lcn/domob/android/c/h;->h:Lcn/domob/android/c/i;

    invoke-interface {v2}, Lcn/domob/android/c/i;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 202
    :catch_1
    move-exception v2

    .line 203
    sget-object v3, Lcn/domob/android/c/h;->g:Lcn/domob/android/ads/c/f;

    invoke-virtual {v3, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 204
    :catch_2
    move-exception v2

    .line 205
    sget-object v3, Lcn/domob/android/c/h;->g:Lcn/domob/android/ads/c/f;

    invoke-virtual {v3, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    move-wide v4, v6

    move v2, v8

    goto/16 :goto_2

    :cond_7
    move-object v2, v0

    move v0, v8

    goto/16 :goto_1
.end method

.method private static declared-synchronized c(Ljava/lang/String;)Z
    .locals 10

    .prologue
    const/4 v1, 0x1

    .line 287
    const-class v2, Lcn/domob/android/c/h;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcn/domob/android/c/h;->g:Lcn/domob/android/ads/c/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "try to create a directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 291
    const/4 v4, 0x3

    move v0, v1

    .line 293
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_0

    if-gt v0, v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 294
    sget-object v5, Lcn/domob/android/c/h;->g:Lcn/domob/android/ads/c/f;

    const-string/jumbo v6, "the %d time to create a directory failed, %s "

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p0, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/domob/android/ads/c/f;->d(Ljava/lang/String;)V

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    :cond_0
    if-le v0, v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 298
    sget-object v3, Lcn/domob/android/c/h;->g:Lcn/domob/android/ads/c/f;

    const-string v4, "hava tried %d times to create a directory failed, %s "

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object p0, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    :cond_1
    :goto_1
    monitor-exit v2

    return v1

    .line 301
    :cond_2
    :try_start_2
    sget-object v0, Lcn/domob/android/c/h;->g:Lcn/domob/android/ads/c/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "the directory is exist, so no need to create again "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 303
    :catch_0
    move-exception v0

    .line 304
    :try_start_3
    sget-object v3, Lcn/domob/android/c/h;->g:Lcn/domob/android/ads/c/f;

    invoke-virtual {v3, v0}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private d()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 217
    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/c/h;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/c/h;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/c/h;->n:Ljava/lang/String;

    .line 220
    sget-object v1, Lcn/domob/android/c/h;->g:Lcn/domob/android/ads/c/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/c/h;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lcn/domob/android/c/h;->n:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcn/domob/android/c/h;->b(Ljava/lang/String;)Z

    move-result v1

    .line 222
    if-eqz v1, :cond_1

    .line 235
    :cond_0
    :goto_0
    return v0

    .line 226
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/domob/android/c/h;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/c/h;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/c/h;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/c/h;->n:Ljava/lang/String;

    .line 227
    iget-object v1, p0, Lcn/domob/android/c/h;->n:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcn/domob/android/c/h;->b(Ljava/lang/String;)Z

    move-result v1

    .line 229
    if-nez v1, :cond_0

    .line 232
    if-nez v1, :cond_2

    .line 233
    sget-object v0, Lcn/domob/android/c/h;->g:Lcn/domob/android/ads/c/f;

    const-string v1, "Local test results are not downloaded resources"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 235
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e()Z
    .locals 2

    .prologue
    .line 281
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 66
    iget-wide v0, p0, Lcn/domob/android/c/h;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcn/domob/android/c/h;->h:Lcn/domob/android/c/i;

    iget-wide v2, p0, Lcn/domob/android/c/h;->s:J

    invoke-interface {v0, v2, v3}, Lcn/domob/android/c/i;->a(J)V

    .line 68
    iget-wide v0, p0, Lcn/domob/android/c/h;->s:J

    .line 91
    :goto_0
    return-wide v0

    .line 70
    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcn/domob/android/c/h;->i:Landroid/content/Context;

    invoke-static {v1}, Lcn/domob/android/c/f;->b(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v1

    .line 74
    if-eqz v1, :cond_1

    .line 75
    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 80
    :goto_1
    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 82
    const/16 v2, 0xc8

    if-lt v1, v2, :cond_2

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_2

    .line 89
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcn/domob/android/c/h;->s:J

    .line 90
    iget-object v0, p0, Lcn/domob/android/c/h;->h:Lcn/domob/android/c/i;

    iget-wide v2, p0, Lcn/domob/android/c/h;->s:J

    invoke-interface {v0, v2, v3}, Lcn/domob/android/c/i;->a(J)V

    .line 91
    iget-wide v0, p0, Lcn/domob/android/c/h;->s:J

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_1

    .line 86
    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method protected a()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 241
    sget-object v1, Lcn/domob/android/c/h;->g:Lcn/domob/android/ads/c/f;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app is download:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcn/domob/android/c/h;->d()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "is not complete:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcn/domob/android/c/h;->p:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-direct {p0}, Lcn/domob/android/c/h;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    iget-boolean v1, p0, Lcn/domob/android/c/h;->p:Z

    if-eqz v1, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-object v0

    .line 247
    :cond_1
    iget-object v0, p0, Lcn/domob/android/c/h;->n:Ljava/lang/String;

    goto :goto_0
.end method

.method public final run()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Lcn/domob/android/c/h;->b()V

    .line 119
    return-void
.end method
