.class Lc/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lc/a;


# direct methods
.method constructor <init>(Lc/a;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lc/b;->a:Lc/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 129
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 89
    new-instance v2, Lc/a$b;

    iget-object v0, p0, Lc/b;->a:Lc/a;

    invoke-direct {v2, v0}, Lc/a$b;-><init>(Lc/a;)V

    .line 90
    const-wide/16 v0, -0x1

    .line 91
    iget-object v3, p0, Lc/b;->a:Lc/a;

    invoke-static {v3}, Lc/a;->a(Lc/a;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    iget-object v0, p0, Lc/b;->a:Lc/a;

    invoke-static {v0}, Lc/a;->b(Lc/a;)J

    move-result-wide v0

    .line 93
    cmp-long v3, v0, v10

    if-gtz v3, :cond_1

    .line 94
    invoke-virtual {v2, v8}, Lc/a$b;->sendEmptyMessage(I)Z

    .line 122
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v3, p0, Lc/b;->a:Lc/a;

    invoke-static {v3}, Lc/a;->c(Lc/a;)V

    .line 100
    :cond_1
    iget-object v3, p0, Lc/b;->a:Lc/a;

    new-instance v4, Lc/c;

    iget-object v5, p0, Lc/b;->a:Lc/a;

    invoke-static {v5}, Lc/a;->d(Lc/a;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lc/b;->a:Lc/a;

    invoke-static {v6}, Lc/a;->e(Lc/a;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lc/b;->a:Lc/a;

    invoke-direct {v4, v5, v6, v7}, Lc/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lc/a;)V

    invoke-static {v3, v4}, Lc/a;->a(Lc/a;Lc/c;)Lc/c;

    .line 101
    iget-object v3, p0, Lc/b;->a:Lc/a;

    invoke-static {v3}, Lc/a;->e(Lc/a;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lc/b;->a(Ljava/lang/String;)V

    .line 102
    iget-object v3, p0, Lc/b;->a:Lc/a;

    invoke-static {v3}, Lc/a;->f(Lc/a;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lc/b;->a(Ljava/lang/String;)V

    .line 103
    iget-object v3, p0, Lc/b;->a:Lc/a;

    invoke-static {v3}, Lc/a;->a(Lc/a;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 104
    iget-object v3, p0, Lc/b;->a:Lc/a;

    invoke-static {v3}, Lc/a;->g(Lc/a;)V

    .line 105
    iget-object v3, p0, Lc/b;->a:Lc/a;

    invoke-static {v3}, Lc/a;->h(Lc/a;)Lc/c;

    move-result-object v3

    invoke-virtual {v3}, Lc/c;->b()J

    move-result-wide v4

    cmp-long v3, v4, v0

    if-eqz v3, :cond_2

    .line 106
    iget-object v3, p0, Lc/b;->a:Lc/a;

    invoke-static {v3}, Lc/a;->c(Lc/a;)V

    .line 107
    iget-object v3, p0, Lc/b;->a:Lc/a;

    invoke-static {v3}, Lc/a;->h(Lc/a;)Lc/c;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Lc/c;->a(J)V

    .line 108
    iget-object v3, p0, Lc/b;->a:Lc/a;

    invoke-static {v3}, Lc/a;->h(Lc/a;)Lc/c;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lc/c;->b(J)V

    .line 111
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lc/b;->a:Lc/a;

    invoke-static {v1}, Lc/a;->h(Lc/a;)Lc/c;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 112
    iget-object v0, p0, Lc/b;->a:Lc/a;

    invoke-static {v0, v8}, Lc/a;->a(Lc/a;Z)Z

    .line 113
    :goto_1
    iget-object v0, p0, Lc/b;->a:Lc/a;

    invoke-static {v0}, Lc/a;->h(Lc/a;)Lc/c;

    move-result-object v0

    invoke-virtual {v0}, Lc/c;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 115
    const-wide/16 v0, 0x5dc

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_2
    invoke-virtual {v2, v8}, Lc/a$b;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 116
    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 121
    :cond_3
    invoke-virtual {v2, v8}, Lc/a$b;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
