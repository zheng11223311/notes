.class public final Lc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/a$a;,
        Lc/a$b;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lc/a$a;

.field private e:Lc/c;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/a;->f:Z

    .line 43
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean p1, p0, Lc/a;->f:Z

    .line 47
    return-void
.end method

.method static synthetic a(Lc/a;Lc/c;)Lc/c;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lc/a;->e:Lc/c;

    return-object p1
.end method

.method static synthetic a(Lc/a;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lc/a;->f:Z

    return v0
.end method

.method static synthetic a(Lc/a;Z)Z
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lc/a;->g:Z

    return p1
.end method

.method static synthetic b(Lc/a;)J
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Lc/a;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic c(Lc/a;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lc/a;->f()V

    return-void
.end method

.method static synthetic d(Lc/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lc/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method private e()J
    .locals 5

    .prologue
    .line 145
    const-wide/16 v0, -0x1

    .line 147
    :try_start_0
    iget-object v2, p0, Lc/a;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lc/d;->b(Ljava/lang/String;Z)Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 148
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 153
    :goto_0
    return-wide v0

    .line 149
    :catch_0
    move-exception v2

    .line 150
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "can not get file length"

    invoke-static {v3, v4, v2}, Lcom/alipay/android/app/exception/AppErrorException;->printException(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic e(Lc/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lc/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lc/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lc/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 157
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lc/a;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 161
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lc/a;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 165
    :cond_1
    return-void
.end method

.method private g()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 191
    .line 194
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v0, p0, Lc/a;->c:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :try_start_1
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 196
    :try_start_2
    iget-object v1, p0, Lc/a;->e:Lc/c;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lc/c;->a(J)V

    .line 197
    iget-object v1, p0, Lc/a;->e:Lc/c;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lc/c;->b(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 201
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 205
    :goto_0
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 209
    :goto_1
    return-void

    .line 198
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 201
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 205
    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 206
    :catch_1
    move-exception v0

    goto :goto_1

    .line 200
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 201
    :goto_4
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 205
    :goto_5
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 207
    :goto_6
    throw v0

    .line 202
    :catch_2
    move-exception v1

    goto :goto_0

    .line 206
    :catch_3
    move-exception v0

    goto :goto_1

    .line 202
    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v2

    goto :goto_5

    .line 206
    :catch_6
    move-exception v1

    goto :goto_6

    .line 200
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    .line 198
    :catch_7
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    :catch_8
    move-exception v1

    move-object v1, v2

    goto :goto_2
.end method

.method static synthetic g(Lc/a;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lc/a;->g()V

    return-void
.end method

.method static synthetic h(Lc/a;)Lc/c;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lc/a;->e:Lc/c;

    return-object v0
.end method

.method static synthetic i(Lc/a;)Lc/a$a;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lc/a;->d:Lc/a$a;

    return-object v0
.end method

.method static synthetic j(Lc/a;)Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lc/a;->g:Z

    return v0
.end method


# virtual methods
.method public final a(Lc/a$a;)V
    .locals 0

    .prologue
    .line 80
    if-eqz p1, :cond_0

    .line 81
    iput-object p1, p0, Lc/a;->d:Lc/a$a;

    .line 83
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lc/a;->a:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lc/a;->f:Z

    .line 59
    return-void
.end method

.method protected final a()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lc/a;->f:Z

    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lc/b;

    invoke-direct {v1, p0}, Lc/b;-><init>(Lc/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 136
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 70
    iput-object p1, p0, Lc/a;->b:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc/a;->c:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lc/a;->e:Lc/c;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lc/a;->e:Lc/c;

    invoke-virtual {v0}, Lc/c;->d()V

    .line 142
    :cond_0
    return-void
.end method

.method protected d()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 168
    .line 171
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lc/a;->c:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    :try_start_1
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 173
    :try_start_2
    iget-object v0, p0, Lc/a;->e:Lc/c;

    invoke-virtual {v0}, Lc/c;->a()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 174
    iget-object v0, p0, Lc/a;->e:Lc/c;

    invoke-virtual {v0}, Lc/c;->b()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 175
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 180
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 184
    :goto_0
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 188
    :goto_1
    return-void

    .line 176
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 177
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 180
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 184
    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 185
    :catch_1
    move-exception v0

    goto :goto_1

    .line 179
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 180
    :goto_4
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 184
    :goto_5
    :try_start_9
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 186
    :goto_6
    throw v0

    .line 181
    :catch_2
    move-exception v0

    goto :goto_0

    .line 185
    :catch_3
    move-exception v0

    goto :goto_1

    .line 181
    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v2

    goto :goto_5

    .line 185
    :catch_6
    move-exception v1

    goto :goto_6

    .line 179
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_4

    .line 176
    :catch_7
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    :catch_8
    move-exception v0

    move-object v2, v3

    goto :goto_2
.end method
