.class public final enum Lcom/alipay/android/app/j;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum a:Lcom/alipay/android/app/j;

.field public static final enum b:Lcom/alipay/android/app/j;

.field public static final enum c:Lcom/alipay/android/app/j;

.field public static final enum d:Lcom/alipay/android/app/j;

.field public static final enum e:Lcom/alipay/android/app/j;

.field public static final enum f:Lcom/alipay/android/app/j;

.field public static final enum g:Lcom/alipay/android/app/j;

.field private static final synthetic j:[Lcom/alipay/android/app/j;


# instance fields
.field private h:I

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4
    new-instance v0, Lcom/alipay/android/app/j;

    const-string v1, "SUCCEEDED"

    const/16 v2, 0x2328

    const-string/jumbo v3, "\u652f\u4ed8\u6210\u529f"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/alipay/android/app/j;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/j;->a:Lcom/alipay/android/app/j;

    new-instance v0, Lcom/alipay/android/app/j;

    const-string v1, "FAILED"

    const/16 v2, 0xfa0

    const-string/jumbo v3, "\u652f\u4ed8\u5931\u8d25"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/alipay/android/app/j;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/j;->b:Lcom/alipay/android/app/j;

    new-instance v0, Lcom/alipay/android/app/j;

    const-string v1, "CANCELED"

    const/16 v2, 0x1771

    const-string/jumbo v3, "\u7528\u6237\u53d6\u6d88"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/alipay/android/app/j;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/j;->c:Lcom/alipay/android/app/j;

    new-instance v0, Lcom/alipay/android/app/j;

    const-string v1, "NETWORK_ERROR"

    const/16 v2, 0x1772

    const-string/jumbo v3, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/alipay/android/app/j;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/j;->d:Lcom/alipay/android/app/j;

    .line 5
    new-instance v0, Lcom/alipay/android/app/j;

    const-string v1, "UNKNOWN"

    const/16 v2, 0x1773

    const-string v3, ""

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/alipay/android/app/j;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/j;->e:Lcom/alipay/android/app/j;

    new-instance v0, Lcom/alipay/android/app/j;

    const-string v1, "UNWORK"

    const/4 v2, 0x5

    const/16 v3, 0x1b59

    const-string/jumbo v4, "\u7f51\u9875\u652f\u4ed8\u5931\u8d25"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/j;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/j;->f:Lcom/alipay/android/app/j;

    new-instance v0, Lcom/alipay/android/app/j;

    const-string v1, "PARAMS_ERROR"

    const/4 v2, 0x6

    const/16 v3, 0xfa1

    const-string/jumbo v4, "\u53c2\u6570\u9519\u8bef"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/j;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/alipay/android/app/j;->g:Lcom/alipay/android/app/j;

    .line 3
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/alipay/android/app/j;

    sget-object v1, Lcom/alipay/android/app/j;->a:Lcom/alipay/android/app/j;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/android/app/j;->b:Lcom/alipay/android/app/j;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/android/app/j;->c:Lcom/alipay/android/app/j;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alipay/android/app/j;->d:Lcom/alipay/android/app/j;

    aput-object v1, v0, v8

    sget-object v1, Lcom/alipay/android/app/j;->e:Lcom/alipay/android/app/j;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/android/app/j;->f:Lcom/alipay/android/app/j;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/android/app/j;->g:Lcom/alipay/android/app/j;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/android/app/j;->j:[Lcom/alipay/android/app/j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lcom/alipay/android/app/j;->h:I

    .line 14
    iput-object p4, p0, Lcom/alipay/android/app/j;->i:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static b(I)Lcom/alipay/android/app/j;
    .locals 1

    .prologue
    .line 34
    sparse-switch p0, :sswitch_data_0

    .line 48
    sget-object v0, Lcom/alipay/android/app/j;->b:Lcom/alipay/android/app/j;

    :goto_0
    return-object v0

    .line 36
    :sswitch_0
    sget-object v0, Lcom/alipay/android/app/j;->a:Lcom/alipay/android/app/j;

    goto :goto_0

    .line 38
    :sswitch_1
    sget-object v0, Lcom/alipay/android/app/j;->c:Lcom/alipay/android/app/j;

    goto :goto_0

    .line 40
    :sswitch_2
    sget-object v0, Lcom/alipay/android/app/j;->d:Lcom/alipay/android/app/j;

    goto :goto_0

    .line 42
    :sswitch_3
    sget-object v0, Lcom/alipay/android/app/j;->e:Lcom/alipay/android/app/j;

    goto :goto_0

    .line 44
    :sswitch_4
    sget-object v0, Lcom/alipay/android/app/j;->f:Lcom/alipay/android/app/j;

    goto :goto_0

    .line 46
    :sswitch_5
    sget-object v0, Lcom/alipay/android/app/j;->g:Lcom/alipay/android/app/j;

    goto :goto_0

    .line 34
    :sswitch_data_0
    .sparse-switch
        0xfa1 -> :sswitch_5
        0x1771 -> :sswitch_1
        0x1772 -> :sswitch_2
        0x1773 -> :sswitch_3
        0x1b59 -> :sswitch_4
        0x2328 -> :sswitch_0
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/app/j;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/alipay/android/app/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/j;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/app/j;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/alipay/android/app/j;->j:[Lcom/alipay/android/app/j;

    invoke-virtual {v0}, [Lcom/alipay/android/app/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/j;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/alipay/android/app/j;->h:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/alipay/android/app/j;->h:I

    .line 19
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/alipay/android/app/j;->i:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/android/app/j;->i:Ljava/lang/String;

    return-object v0
.end method
