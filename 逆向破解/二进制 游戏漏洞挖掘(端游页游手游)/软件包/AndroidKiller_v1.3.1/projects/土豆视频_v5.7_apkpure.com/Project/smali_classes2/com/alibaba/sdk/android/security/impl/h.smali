.class public final Lcom/alibaba/sdk/android/security/impl/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/security/SecurityService;


# static fields
.field public static final a:Lcom/alibaba/sdk/android/security/SecurityService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alibaba/sdk/android/security/impl/h;

    invoke-direct {v0}, Lcom/alibaba/sdk/android/security/impl/h;-><init>()V

    sput-object v0, Lcom/alibaba/sdk/android/security/impl/h;->a:Lcom/alibaba/sdk/android/security/SecurityService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;[B)Ljava/lang/Long;
    .locals 3

    sget-object v0, Lcom/alibaba/sdk/android/security/impl/SecurityGuardWrapper;->INSTANCE:Lcom/alibaba/sdk/android/security/impl/SecurityGuardWrapper;

    const-string v1, "AppIDKey"

    const-string v2, "OpenIDSaltKey"

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/alibaba/sdk/android/security/impl/SecurityGuardWrapper;->analyzeOpenId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final analyzeItemId(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-static {p1, v0}, Lcom/alibaba/sdk/android/security/impl/h;->a(Ljava/lang/String;[B)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x0t
        0x2t
    .end array-data
.end method

.method public final analyzeUserId(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-static {p1, v0}, Lcom/alibaba/sdk/android/security/impl/h;->a(Ljava/lang/String;[B)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
    .end array-data
.end method

.method public final signTopOld(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/alibaba/sdk/android/security/impl/SecurityGuardWrapper;->INSTANCE:Lcom/alibaba/sdk/android/security/impl/SecurityGuardWrapper;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/alibaba/sdk/android/security/impl/SecurityGuardWrapper;->signRequest(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
