.class final enum Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;
.super Ljava/lang/Enum;
.source "ErrorCodeExplanation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intertrust/wasabi/ErrorCodeExplanation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Recommendation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;

.field public static final enum RECOMMEND_CHECK_NETWORK:Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;

.field public static final enum RECOMMEND_CONTACT_SUPPORT:Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;

.field public static final enum RECOMMEND_FIX_DRM:Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;

.field public static final enum RECOMMEND_GOTO_BROWSER:Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;

.field public static final enum RECOMMEND_REBOOT:Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;

.field public static final enum RECOMMEND_REFRESH_CONTENT:Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;

.field public static final enum RECOMMEND_REINSTALL:Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;

.field public static final enum RECOMMEND_TRY_AGAIN:Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;

    const-string v1, "RECOMMEND_TRY_AGAIN"

    invoke-direct {v0, v1, v3}, Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;->RECOMMEND_TRY_AGAIN:Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;

    .line 25
    new-instance v0, Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;

    const-string v1, "RECOMMEND_REINSTALL"

    invoke-direct {v0, v1, v4}, Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;->RECOMMEND_REINSTALL:Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;

    .line 26
    new-instance v0, Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;

    const-string v1, "RECOMMEND_CHECK_NETWORK"

    invoke-direct {v0, v1, v5}, Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;->RECOMMEND_CHECK_NETWORK:Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;

    .line 27
    new-instance v0, Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;

    const-string v1, "RECOMMEND_CONTACT_SUPPORT"

    invoke-direct {v0, v1, v6}, Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;->RECOMMEND_CONTACT_SUPPORT:Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;

    .line 28
    new-instance v0, Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;

    const-string v1, "RECOMMEND_REFRESH_CONTENT"

    invoke-direct {v0, v1, v7}, Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;->RECOMMEND_REFRESH_CONTENT:Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;

    .line 29
    new-instance v0, Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;

    const-string v1, "RECOMMEND_FIX_DRM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;->RECOMMEND_FIX_DRM:Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;

    .line 30
    new-instance v0, Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;

    const-string v1, "RECOMMEND_GOTO_BROWSER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;->RECOMMEND_GOTO_BROWSER:Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;

    .line 31
    new-instance v0, Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;

    const-string v1, "RECOMMEND_REBOOT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;->RECOMMEND_REBOOT:Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;

    .line 23
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;

    sget-object v1, Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;->RECOMMEND_TRY_AGAIN:Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;->RECOMMEND_REINSTALL:Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;->RECOMMEND_CHECK_NETWORK:Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;->RECOMMEND_CONTACT_SUPPORT:Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;

    aput-object v1, v0, v6

    sget-object v1, Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;->RECOMMEND_REFRESH_CONTENT:Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;->RECOMMEND_FIX_DRM:Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;->RECOMMEND_GOTO_BROWSER:Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;->RECOMMEND_REBOOT:Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;

    aput-object v2, v0, v1

    sput-object v0, Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;->$VALUES:[Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;

    return-object v0
.end method

.method public static values()[Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;->$VALUES:[Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;

    invoke-virtual {v0}, [Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/intertrust/wasabi/ErrorCodeExplanation$Recommendation;

    return-object v0
.end method
