.class public Lh/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lh/b;

.field private static f:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Lcom/alipay/android/app/d;

.field private e:I

.field private g:Lcom/alipay/android/app/pay/channel/ChannelInfo;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static a()Lh/b;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lh/b;->a:Lh/b;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lh/b;

    invoke-direct {v0}, Lh/b;-><init>()V

    sput-object v0, Lh/b;->a:Lh/b;

    .line 45
    :cond_0
    sget-object v0, Lh/b;->a:Lh/b;

    return-object v0
.end method

.method public static a([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 133
    const-string v2, ""

    .line 134
    const/4 v0, 0x0

    .line 136
    :try_start_0
    new-instance v1, Ljava/lang/ProcessBuilder;

    invoke-direct {v1, p0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 138
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 139
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 141
    :try_start_1
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 143
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 145
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    .line 146
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    move-object v0, v2

    .line 148
    :goto_0
    :try_start_2
    const-string v2, "exit\n"

    invoke-virtual {v3, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 150
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 155
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 160
    :goto_1
    return-object v0

    .line 151
    :catch_0
    move-exception v1

    move-object v1, v0

    move-object v0, v2

    .line 155
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 156
    :catch_1
    move-exception v1

    goto :goto_1

    .line 154
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 155
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 157
    :goto_4
    throw v0

    .line 156
    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_4

    .line 154
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 151
    :catch_4
    move-exception v0

    move-object v0, v2

    goto :goto_2

    :catch_5
    move-exception v2

    goto :goto_2

    :cond_0
    move-object v0, v2

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 191
    const/16 v0, 0x41

    new-array v4, v0, [C

    fill-array-data v4, :array_0

    .line 198
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 199
    array-length v6, v5

    move v3, v2

    move v0, v2

    :goto_0
    if-ge v3, v6, :cond_2

    .line 201
    aget-char v7, v5, v3

    .line 202
    array-length v8, v4

    move v1, v2

    move v0, v2

    :goto_1
    if-ge v1, v8, :cond_1

    .line 203
    aget-char v9, v4, v1

    if-ne v7, v9, :cond_0

    .line 204
    const/4 v0, 0x1

    .line 202
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 206
    :cond_1
    if-nez v0, :cond_3

    .line 209
    :cond_2
    return v0

    .line 199
    :cond_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 191
    nop

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x5cs
        0x3ds
    .end array-data
.end method

.method public static h()Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 110
    const/4 v2, 0x5

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "/system/xbin/"

    aput-object v2, v3, v1

    const-string v2, "/system/bin/"

    aput-object v2, v3, v0

    const-string v2, "/system/sbin/"

    aput-object v2, v3, v4

    const-string v2, "/sbin/"

    aput-object v2, v3, v5

    const/4 v2, 0x4

    const-string v4, "/vendor/bin/"

    aput-object v4, v3, v2

    move v2, v1

    .line 113
    :goto_0
    :try_start_0
    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 114
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v3, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "su"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 115
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 117
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "ls"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "-l"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    aput-object v4, v2, v3

    .line 118
    invoke-static {v2}, Lh/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "root"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "root"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v3, v2, :cond_1

    :cond_0
    move v0, v1

    .line 128
    :cond_1
    :goto_1
    return v0

    .line 113
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    :cond_3
    move v0, v1

    .line 128
    goto :goto_1
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    const/16 v0, 0x18

    invoke-static {v0}, Lj/a;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    sput-object v0, Lh/b;->f:Ljava/lang/String;

    .line 176
    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lh/b;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 94
    iput p1, p0, Lh/b;->e:I

    .line 95
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/alipay/android/app/d;)V
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lh/b;->b:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lh/b;->d:Lcom/alipay/android/app/d;

    .line 70
    :try_start_0
    iget-object v0, p0, Lh/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lh/e;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lh/b;->b:Landroid/content/Context;

    return-object v0
.end method

.method public b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lh/b;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/alipay/android/app/pay/channel/ChannelInfo;
    .locals 3

    .prologue
    .line 53
    iget-object v0, p0, Lh/b;->g:Lcom/alipay/android/app/pay/channel/ChannelInfo;

    if-nez v0, :cond_0

    .line 55
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.alipay.android.app.pay.channel."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lh/b;->b:Landroid/content/Context;

    const-string v2, "channel"

    invoke-static {v2}, Lj/i;->g(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/pay/channel/ChannelInfo;

    iput-object v0, p0, Lh/b;->g:Lcom/alipay/android/app/pay/channel/ChannelInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_0
    :goto_0
    iget-object v0, p0, Lh/b;->g:Lcom/alipay/android/app/pay/channel/ChannelInfo;

    return-object v0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    new-instance v0, Lcom/alipay/android/app/pay/channel/CommonChannelInfo;

    invoke-direct {v0}, Lcom/alipay/android/app/pay/channel/CommonChannelInfo;-><init>()V

    iput-object v0, p0, Lh/b;->g:Lcom/alipay/android/app/pay/channel/ChannelInfo;

    goto :goto_0
.end method

.method public d()Lcom/alipay/android/app/d;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lh/b;->d:Lcom/alipay/android/app/d;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lh/b;->e:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lh/b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lh/b;->c:Ljava/lang/String;

    .line 105
    :cond_0
    iget-object v0, p0, Lh/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public i()F
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lh/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lj/a;->c(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lh/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ta/utdid2/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lh/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
