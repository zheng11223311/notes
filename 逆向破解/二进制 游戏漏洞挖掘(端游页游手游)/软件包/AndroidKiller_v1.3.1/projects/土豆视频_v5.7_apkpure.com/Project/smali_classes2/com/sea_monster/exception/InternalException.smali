.class public Lcom/sea_monster/exception/InternalException;
.super Lcom/sea_monster/exception/BaseException;
.source "InternalException.java"


# static fields
.field public static final DEFAULT_EXP_MESSAGE:Ljava/lang/String; = "\u64cd\u4f5c\u5931\u8d25"

.field public static final DEFAULT_LOGIC_EXP_MESSAGE:Ljava/lang/String; = "\u64cd\u4f5c\u5931\u8d25"

.field public static final DEFAULT_NETWORK_EXP_MESSAGE:Ljava/lang/String; = "\u7f51\u7edc\u8bf7\u6c42\u5f02\u5e38"

.field public static final DEFAULT_OTHER_EXP_MESSAGE:Ljava/lang/String; = "\u64cd\u4f5c\u5931\u8d25"

.field public static final DEFAULT_SERVICE_EXP_MESSAGE:Ljava/lang/String; = "\u670d\u52a1\u5668\u5f02\u5e38"

.field public static final DEF_LOGIC_CODE:I = -0xf000

.field public static final DEF_NETWORK_CODE:I = -0x10000

.field public static final DEF_OTHER_CODE:I = -0xe000

.field public static final DEF_SERVICE_CODE:I = -0xd000

.field public static final DISCARD_TASK:I = -0xefff

.field public static final NETWORK_DISABLED:I = -0xffff

.field public static final NETWORK_PACKER_ERROR:I = -0xfffe

.field private static codeMapping:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sea_monster/exception/InternalException;->codeMapping:Ljava/util/HashMap;

    .line 31
    sget-object v0, Lcom/sea_monster/exception/InternalException;->codeMapping:Ljava/util/HashMap;

    const/16 v1, 0x190

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u8bf7\u6c42\u65e0\u6548"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/sea_monster/exception/InternalException;->codeMapping:Ljava/util/HashMap;

    const/16 v1, 0x191

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u670d\u52a1\u5668\u5f02\u5e38\uff0c\u8bf7\u6ce8\u9500\u5e10\u53f7\u540e\u91cd\u65b0\u767b\u5f55"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/sea_monster/exception/InternalException;->codeMapping:Ljava/util/HashMap;

    const/16 v1, 0x193

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u670d\u52a1\u5668\u5f02\u5e38\uff0c\u8bf7\u6ce8\u9500\u5e10\u53f7\u540e\u91cd\u65b0\u767b\u5f55"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/sea_monster/exception/InternalException;->codeMapping:Ljava/util/HashMap;

    const/16 v1, 0x194

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u8bf7\u6c42\u5931\u8d25"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/sea_monster/exception/InternalException;->codeMapping:Ljava/util/HashMap;

    const/16 v1, 0x1f4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u670d\u52a1\u5668\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/sea_monster/exception/InternalException;->codeMapping:Ljava/util/HashMap;

    const/16 v1, 0x1f5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u670d\u52a1\u5668\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/sea_monster/exception/InternalException;->codeMapping:Ljava/util/HashMap;

    const/16 v1, 0x1f6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u670d\u52a1\u5668\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/sea_monster/exception/InternalException;->codeMapping:Ljava/util/HashMap;

    const/16 v1, 0x1f7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u670d\u52a1\u5668\u6b63\u5fd9\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/sea_monster/exception/InternalException;->codeMapping:Ljava/util/HashMap;

    const/16 v1, 0x1f8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u670d\u52a1\u5668\u8bf7\u6c42\u8d85\u65f6\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/sea_monster/exception/InternalException;->codeMapping:Ljava/util/HashMap;

    const/16 v1, 0xfa1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u8bf7\u6c42\u7684\u53c2\u6570\u9519\u8bef"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/sea_monster/exception/InternalException;->codeMapping:Ljava/util/HashMap;

    const/16 v1, 0xfa2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u53d1\u5e03//\u66f4\u65b0\u5185\u5bb9\u9519\u8bef"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/sea_monster/exception/InternalException;->codeMapping:Ljava/util/HashMap;

    const/16 v1, 0xfa3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "XML\u89e3\u6790\u9519\u8bef"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/sea_monster/exception/InternalException;->codeMapping:Ljava/util/HashMap;

    const/16 v1, 0xfa4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u4f20\u56fe\u7247\u9519\u8bef"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/sea_monster/exception/InternalException;->codeMapping:Ljava/util/HashMap;

    const/16 v1, 0xfa5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u4e0a\u4f20\u56fe\u7247\u5927\u5c0f\u9519\u8bef"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/sea_monster/exception/InternalException;->codeMapping:Ljava/util/HashMap;

    const/16 v1, 0xfa7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u56fe\u7247\u538b\u7f29\u9519\u8bef"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/sea_monster/exception/InternalException;->codeMapping:Ljava/util/HashMap;

    const/16 v1, 0xfa8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u7528\u6237\u4e0d\u5b58\u5728"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/sea_monster/exception/InternalException;->codeMapping:Ljava/util/HashMap;

    const/16 v1, 0xfaa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u8bf7\u6c42\u7684\u6570\u636e\u4e0d\u5b58\u5728"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/sea_monster/exception/InternalException;->codeMapping:Ljava/util/HashMap;

    const/16 v1, 0xfab

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "URL\u9519\u8bef"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/sea_monster/exception/InternalException;->codeMapping:Ljava/util/HashMap;

    const/16 v1, 0xfac

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u5185\u5bb9\u5305\u542b\u975e\u6cd5\u8bcd"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/sea_monster/exception/InternalException;->codeMapping:Ljava/util/HashMap;

    const/16 v1, 0xfad

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u4e0d\u80fd\u91cd\u590d\u7ed1\u5b9a\u670d\u52a1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/sea_monster/exception/InternalException;->codeMapping:Ljava/util/HashMap;

    const v1, 0x9c42

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\u8bf7\u6c42\u65e0\u6548"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p2}, Lcom/sea_monster/exception/BaseException;-><init>(Ljava/lang/String;)V

    .line 66
    iput p1, p0, Lcom/sea_monster/exception/InternalException;->code:I

    .line 67
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 70
    invoke-direct {p0, p2}, Lcom/sea_monster/exception/BaseException;-><init>(Ljava/lang/Throwable;)V

    .line 71
    iput p1, p0, Lcom/sea_monster/exception/InternalException;->code:I

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/sea_monster/exception/BaseException;-><init>(Ljava/lang/String;)V

    .line 76
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/sea_monster/exception/InternalException;->code:I

    return v0
.end method

.method public getCustomErrorMessage(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "specialCode"    # I
    .param p2, "specialMessage"    # Ljava/lang/String;

    .prologue
    .line 120
    iget v0, p0, Lcom/sea_monster/exception/InternalException;->code:I

    if-ne p1, v0, :cond_0

    .line 123
    .end local p2    # "specialMessage":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "specialMessage":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/sea_monster/exception/InternalException;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public getGeneralCode()I
    .locals 5

    .prologue
    const/16 v4, 0xc00

    const/16 v3, 0x800

    const/16 v2, 0x400

    .line 99
    sget-object v0, Lcom/sea_monster/exception/InternalException;->codeMapping:Ljava/util/HashMap;

    iget v1, p0, Lcom/sea_monster/exception/InternalException;->code:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget v0, p0, Lcom/sea_monster/exception/InternalException;->code:I

    .line 112
    :goto_0
    return v0

    .line 102
    :cond_0
    iget v0, p0, Lcom/sea_monster/exception/InternalException;->code:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/sea_monster/exception/InternalException;->code:I

    if-ge v0, v2, :cond_1

    .line 103
    const/high16 v0, -0x10000

    goto :goto_0

    .line 104
    :cond_1
    iget v0, p0, Lcom/sea_monster/exception/InternalException;->code:I

    if-lt v0, v2, :cond_2

    iget v0, p0, Lcom/sea_monster/exception/InternalException;->code:I

    if-ge v0, v3, :cond_2

    .line 105
    const v0, -0xf000

    goto :goto_0

    .line 106
    :cond_2
    iget v0, p0, Lcom/sea_monster/exception/InternalException;->code:I

    if-lt v0, v3, :cond_3

    iget v0, p0, Lcom/sea_monster/exception/InternalException;->code:I

    if-ge v0, v4, :cond_3

    .line 107
    const v0, -0xe000

    goto :goto_0

    .line 108
    :cond_3
    iget v0, p0, Lcom/sea_monster/exception/InternalException;->code:I

    if-lt v0, v4, :cond_4

    iget v0, p0, Lcom/sea_monster/exception/InternalException;->code:I

    const/16 v1, 0x1000

    if-ge v0, v1, :cond_4

    .line 109
    const v0, -0xd000

    goto :goto_0

    .line 112
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSpecial()Z
    .locals 2

    .prologue
    .line 116
    sget-object v0, Lcom/sea_monster/exception/InternalException;->codeMapping:Ljava/util/HashMap;

    iget v1, p0, Lcom/sea_monster/exception/InternalException;->code:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/sea_monster/exception/InternalException;->code:I

    .line 62
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0xc00

    const/16 v3, 0x800

    const/16 v2, 0x400

    .line 82
    sget-object v0, Lcom/sea_monster/exception/InternalException;->codeMapping:Ljava/util/HashMap;

    iget v1, p0, Lcom/sea_monster/exception/InternalException;->code:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lcom/sea_monster/exception/InternalException;->codeMapping:Ljava/util/HashMap;

    iget v1, p0, Lcom/sea_monster/exception/InternalException;->code:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    :goto_0
    return-object v0

    .line 85
    :cond_0
    iget v0, p0, Lcom/sea_monster/exception/InternalException;->code:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/sea_monster/exception/InternalException;->code:I

    if-ge v0, v2, :cond_1

    .line 86
    const-string v0, "\u7f51\u7edc\u8bf7\u6c42\u5f02\u5e38"

    goto :goto_0

    .line 87
    :cond_1
    iget v0, p0, Lcom/sea_monster/exception/InternalException;->code:I

    if-lt v0, v2, :cond_2

    iget v0, p0, Lcom/sea_monster/exception/InternalException;->code:I

    if-ge v0, v3, :cond_2

    .line 88
    const-string v0, "\u64cd\u4f5c\u5931\u8d25"

    goto :goto_0

    .line 89
    :cond_2
    iget v0, p0, Lcom/sea_monster/exception/InternalException;->code:I

    if-lt v0, v3, :cond_3

    iget v0, p0, Lcom/sea_monster/exception/InternalException;->code:I

    if-ge v0, v4, :cond_3

    .line 90
    const-string v0, "\u64cd\u4f5c\u5931\u8d25"

    goto :goto_0

    .line 91
    :cond_3
    iget v0, p0, Lcom/sea_monster/exception/InternalException;->code:I

    if-lt v0, v4, :cond_4

    iget v0, p0, Lcom/sea_monster/exception/InternalException;->code:I

    const/16 v1, 0x1000

    if-ge v0, v1, :cond_4

    .line 92
    const-string v0, "\u670d\u52a1\u5668\u5f02\u5e38"

    goto :goto_0

    .line 95
    :cond_4
    const-string v0, "\u64cd\u4f5c\u5931\u8d25"

    goto :goto_0
.end method
