.class Lc/a$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lc/a;


# direct methods
.method public constructor <init>(Lc/a;)V
    .locals 1

    .prologue
    .line 213
    iput-object p1, p0, Lc/a$b;->a:Lc/a;

    .line 214
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 215
    return-void
.end method

.method private a(F)V
    .locals 2

    .prologue
    const/high16 v1, 0x42c80000    # 100.0f

    .line 250
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lc/a$b;->a:Lc/a;

    invoke-static {v0}, Lc/a;->i(Lc/a;)Lc/a$a;

    move-result-object v0

    invoke-interface {v0}, Lc/a$a;->a()V

    .line 258
    :goto_0
    return-void

    .line 252
    :cond_0
    cmpl-float v0, p1, v1

    if-lez v0, :cond_1

    .line 253
    iget-object v0, p0, Lc/a$b;->a:Lc/a;

    invoke-static {v0}, Lc/a;->c(Lc/a;)V

    .line 254
    iget-object v0, p0, Lc/a$b;->a:Lc/a;

    invoke-static {v0}, Lc/a;->i(Lc/a;)Lc/a$a;

    move-result-object v0

    invoke-interface {v0}, Lc/a$a;->b()V

    goto :goto_0

    .line 256
    :cond_1
    iget-object v0, p0, Lc/a$b;->a:Lc/a;

    invoke-static {v0}, Lc/a;->i(Lc/a;)Lc/a$a;

    move-result-object v0

    invoke-interface {v0}, Lc/a$a;->b()V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 219
    iget-object v0, p0, Lc/a$b;->a:Lc/a;

    invoke-static {v0}, Lc/a;->i(Lc/a;)Lc/a$a;

    move-result-object v0

    if-nez v0, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v0, p0, Lc/a$b;->a:Lc/a;

    invoke-static {v0}, Lc/a;->i(Lc/a;)Lc/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    const/high16 v0, 0x42480000    # 50.0f

    .line 227
    :try_start_0
    iget-object v1, p0, Lc/a$b;->a:Lc/a;

    invoke-static {v1}, Lc/a;->a(Lc/a;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 228
    iget-object v0, p0, Lc/a$b;->a:Lc/a;

    invoke-static {v0}, Lc/a;->h(Lc/a;)Lc/c;

    move-result-object v0

    invoke-virtual {v0}, Lc/c;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    iget-object v2, p0, Lc/a$b;->a:Lc/a;

    invoke-static {v2}, Lc/a;->h(Lc/a;)Lc/c;

    move-result-object v2

    invoke-virtual {v2}, Lc/c;->b()J

    move-result-wide v2

    div-long/2addr v0, v2

    long-to-float v0, v0

    .line 234
    :cond_2
    :goto_1
    iget-object v1, p0, Lc/a$b;->a:Lc/a;

    invoke-static {v1}, Lc/a;->h(Lc/a;)Lc/c;

    move-result-object v1

    invoke-virtual {v1}, Lc/c;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 235
    iget-object v1, p0, Lc/a$b;->a:Lc/a;

    invoke-static {v1}, Lc/a;->j(Lc/a;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    iget-object v1, p0, Lc/a$b;->a:Lc/a;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lc/a;->a(Lc/a;Z)Z

    .line 238
    invoke-direct {p0, v0}, Lc/a$b;->a(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    iget-object v1, p0, Lc/a$b;->a:Lc/a;

    invoke-static {v1}, Lc/a;->i(Lc/a;)Lc/a$a;

    move-result-object v1

    invoke-interface {v1}, Lc/a$a;->b()V

    .line 245
    const-class v1, Lc/a;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/exception/AppErrorException;->printException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 230
    :cond_3
    :try_start_1
    iget-object v1, p0, Lc/a$b;->a:Lc/a;

    invoke-static {v1}, Lc/a;->h(Lc/a;)Lc/c;

    move-result-object v1

    invoke-virtual {v1}, Lc/c;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 231
    const/high16 v0, 0x42c80000    # 100.0f

    goto :goto_1

    .line 241
    :cond_4
    iget-object v1, p0, Lc/a$b;->a:Lc/a;

    invoke-static {v1}, Lc/a;->i(Lc/a;)Lc/a$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lc/a$a;->a(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
