.class public Lcom/youku/util/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "Youku"

.field public static flags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    sget v0, Lcom/tudou/android/Youku;->flags:I

    sput v0, Lcom/youku/util/Logger;->flags:I

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/youku/util/Logger;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 63
    sget-boolean v0, Lcom/youku/util/Logger;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 64
    const-string v0, "Youku"

    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_1
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 53
    sget-boolean v0, Lcom/youku/util/Logger;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 54
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_1
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 58
    sget-boolean v0, Lcom/youku/util/Logger;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 59
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    :cond_1
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 68
    sget-boolean v0, Lcom/youku/util/Logger;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 69
    const-string v0, "Youku"

    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 83
    sget-boolean v0, Lcom/youku/util/Logger;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 84
    const-string v0, "Youku"

    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 73
    sget-boolean v0, Lcom/youku/util/Logger;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 74
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 78
    sget-boolean v0, Lcom/youku/util/Logger;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 79
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 88
    sget-boolean v0, Lcom/youku/util/Logger;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 89
    const-string v0, "Youku"

    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    :cond_1
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 43
    sget-boolean v0, Lcom/youku/util/Logger;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 44
    const-string v0, "Youku"

    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_1
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 33
    sget-boolean v0, Lcom/youku/util/Logger;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 34
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_1
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 38
    sget-boolean v0, Lcom/youku/util/Logger;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 39
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    :cond_1
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 48
    sget-boolean v0, Lcom/youku/util/Logger;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 49
    const-string v0, "Youku"

    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    :cond_1
    return-void
.end method
