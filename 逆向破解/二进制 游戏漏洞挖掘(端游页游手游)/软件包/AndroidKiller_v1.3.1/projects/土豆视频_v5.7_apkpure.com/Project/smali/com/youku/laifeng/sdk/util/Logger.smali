.class public Lcom/youku/laifeng/sdk/util/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static DEBUG:Z = false

.field public static ERROR:Z = false

.field public static INFO:Z = false

.field public static LOGLEVEL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Logger"

.field public static VERBOSE:Z

.field public static WARN:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 22
    sget-boolean v0, Lcom/youku/laifeng/sdk/BuildConfig;->DEBUG:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    sput v0, Lcom/youku/laifeng/sdk/util/Logger;->LOGLEVEL:I

    .line 23
    sget v0, Lcom/youku/laifeng/sdk/util/Logger;->LOGLEVEL:I

    const/4 v3, 0x4

    if-le v0, v3, :cond_1

    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/youku/laifeng/sdk/util/Logger;->VERBOSE:Z

    .line 24
    sget v0, Lcom/youku/laifeng/sdk/util/Logger;->LOGLEVEL:I

    const/4 v3, 0x3

    if-le v0, v3, :cond_2

    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/youku/laifeng/sdk/util/Logger;->DEBUG:Z

    .line 25
    sget v0, Lcom/youku/laifeng/sdk/util/Logger;->LOGLEVEL:I

    const/4 v3, 0x2

    if-le v0, v3, :cond_3

    move v0, v2

    :goto_3
    sput-boolean v0, Lcom/youku/laifeng/sdk/util/Logger;->INFO:Z

    .line 26
    sget v0, Lcom/youku/laifeng/sdk/util/Logger;->LOGLEVEL:I

    if-le v0, v2, :cond_4

    move v0, v2

    :goto_4
    sput-boolean v0, Lcom/youku/laifeng/sdk/util/Logger;->WARN:Z

    .line 27
    sget v0, Lcom/youku/laifeng/sdk/util/Logger;->LOGLEVEL:I

    if-lez v0, :cond_5

    :goto_5
    sput-boolean v2, Lcom/youku/laifeng/sdk/util/Logger;->ERROR:Z

    return-void

    :cond_0
    move v0, v1

    .line 22
    goto :goto_0

    :cond_1
    move v0, v1

    .line 23
    goto :goto_1

    :cond_2
    move v0, v1

    .line 24
    goto :goto_2

    :cond_3
    move v0, v1

    .line 25
    goto :goto_3

    :cond_4
    move v0, v1

    .line 26
    goto :goto_4

    :cond_5
    move v2, v1

    .line 27
    goto :goto_5
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 69
    sget-boolean v0, Lcom/youku/laifeng/sdk/util/Logger;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 70
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "Logger"

    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_1
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 59
    sget-boolean v0, Lcom/youku/laifeng/sdk/util/Logger;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 60
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_1
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 64
    sget-boolean v0, Lcom/youku/laifeng/sdk/util/Logger;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 65
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    :cond_1
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 74
    sget-boolean v0, Lcom/youku/laifeng/sdk/util/Logger;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 75
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "Logger"

    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 89
    sget-boolean v0, Lcom/youku/laifeng/sdk/util/Logger;->ERROR:Z

    if-eqz v0, :cond_1

    .line 90
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "Logger"

    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 79
    sget-boolean v0, Lcom/youku/laifeng/sdk/util/Logger;->ERROR:Z

    if-eqz v0, :cond_1

    .line 80
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 84
    sget-boolean v0, Lcom/youku/laifeng/sdk/util/Logger;->ERROR:Z

    if-eqz v0, :cond_1

    .line 85
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 94
    sget-boolean v0, Lcom/youku/laifeng/sdk/util/Logger;->ERROR:Z

    if-eqz v0, :cond_1

    .line 95
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "Logger"

    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    :cond_1
    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 4
    .param p0, "debugMode"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 30
    if-eqz p0, :cond_0

    const/4 v0, 0x5

    :goto_0
    sput v0, Lcom/youku/laifeng/sdk/util/Logger;->LOGLEVEL:I

    .line 31
    sget v0, Lcom/youku/laifeng/sdk/util/Logger;->LOGLEVEL:I

    const/4 v3, 0x4

    if-le v0, v3, :cond_1

    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/youku/laifeng/sdk/util/Logger;->VERBOSE:Z

    .line 32
    sget v0, Lcom/youku/laifeng/sdk/util/Logger;->LOGLEVEL:I

    const/4 v3, 0x3

    if-le v0, v3, :cond_2

    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/youku/laifeng/sdk/util/Logger;->DEBUG:Z

    .line 33
    sget v0, Lcom/youku/laifeng/sdk/util/Logger;->LOGLEVEL:I

    const/4 v3, 0x2

    if-le v0, v3, :cond_3

    move v0, v2

    :goto_3
    sput-boolean v0, Lcom/youku/laifeng/sdk/util/Logger;->INFO:Z

    .line 34
    sget v0, Lcom/youku/laifeng/sdk/util/Logger;->LOGLEVEL:I

    if-le v0, v2, :cond_4

    move v0, v2

    :goto_4
    sput-boolean v0, Lcom/youku/laifeng/sdk/util/Logger;->WARN:Z

    .line 35
    sget v0, Lcom/youku/laifeng/sdk/util/Logger;->LOGLEVEL:I

    if-lez v0, :cond_5

    :goto_5
    sput-boolean v2, Lcom/youku/laifeng/sdk/util/Logger;->ERROR:Z

    .line 36
    return-void

    :cond_0
    move v0, v1

    .line 30
    goto :goto_0

    :cond_1
    move v0, v1

    .line 31
    goto :goto_1

    :cond_2
    move v0, v1

    .line 32
    goto :goto_2

    :cond_3
    move v0, v1

    .line 33
    goto :goto_3

    :cond_4
    move v0, v1

    .line 34
    goto :goto_4

    :cond_5
    move v2, v1

    .line 35
    goto :goto_5
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 49
    sget-boolean v0, Lcom/youku/laifeng/sdk/util/Logger;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 50
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "Logger"

    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_1
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 39
    sget-boolean v0, Lcom/youku/laifeng/sdk/util/Logger;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 40
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_1
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 44
    sget-boolean v0, Lcom/youku/laifeng/sdk/util/Logger;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 45
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    :cond_1
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 54
    sget-boolean v0, Lcom/youku/laifeng/sdk/util/Logger;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 55
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "Logger"

    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 56
    :cond_1
    return-void
.end method
