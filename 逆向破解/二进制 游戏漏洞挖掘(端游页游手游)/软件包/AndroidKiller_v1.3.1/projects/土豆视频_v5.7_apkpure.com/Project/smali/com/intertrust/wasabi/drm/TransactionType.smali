.class public final enum Lcom/intertrust/wasabi/drm/TransactionType;
.super Ljava/lang/Enum;
.source "TransactionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/intertrust/wasabi/drm/TransactionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/intertrust/wasabi/drm/TransactionType;

.field public static final enum CRL_UPDATE:Lcom/intertrust/wasabi/drm/TransactionType;

.field public static final enum LICENSE_ACQUISITION:Lcom/intertrust/wasabi/drm/TransactionType;

.field public static final enum LINK_ACQUISITION:Lcom/intertrust/wasabi/drm/TransactionType;

.field public static final enum LINK_RELEASE:Lcom/intertrust/wasabi/drm/TransactionType;

.field public static final enum METERING_DATA_UPDATE:Lcom/intertrust/wasabi/drm/TransactionType;

.field public static final enum PERSONALIZATION:Lcom/intertrust/wasabi/drm/TransactionType;

.field public static final enum SECURITY_DATA_CERTIFICATION:Lcom/intertrust/wasabi/drm/TransactionType;

.field public static final enum SECURITY_DATA_UPDATE:Lcom/intertrust/wasabi/drm/TransactionType;

.field public static final enum SERVICE_TOKEN_PROCESSING:Lcom/intertrust/wasabi/drm/TransactionType;

.field public static final enum SUSPENSION_LIST_UPDATE:Lcom/intertrust/wasabi/drm/TransactionType;

.field public static final enum USER_REGISTRATION:Lcom/intertrust/wasabi/drm/TransactionType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/intertrust/wasabi/drm/TransactionType;

    const-string v1, "SERVICE_TOKEN_PROCESSING"

    invoke-direct {v0, v1, v3}, Lcom/intertrust/wasabi/drm/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intertrust/wasabi/drm/TransactionType;->SERVICE_TOKEN_PROCESSING:Lcom/intertrust/wasabi/drm/TransactionType;

    .line 23
    new-instance v0, Lcom/intertrust/wasabi/drm/TransactionType;

    const-string v1, "PERSONALIZATION"

    invoke-direct {v0, v1, v4}, Lcom/intertrust/wasabi/drm/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intertrust/wasabi/drm/TransactionType;->PERSONALIZATION:Lcom/intertrust/wasabi/drm/TransactionType;

    .line 24
    new-instance v0, Lcom/intertrust/wasabi/drm/TransactionType;

    const-string v1, "USER_REGISTRATION"

    invoke-direct {v0, v1, v5}, Lcom/intertrust/wasabi/drm/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intertrust/wasabi/drm/TransactionType;->USER_REGISTRATION:Lcom/intertrust/wasabi/drm/TransactionType;

    .line 25
    new-instance v0, Lcom/intertrust/wasabi/drm/TransactionType;

    const-string v1, "LINK_ACQUISITION"

    invoke-direct {v0, v1, v6}, Lcom/intertrust/wasabi/drm/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intertrust/wasabi/drm/TransactionType;->LINK_ACQUISITION:Lcom/intertrust/wasabi/drm/TransactionType;

    .line 26
    new-instance v0, Lcom/intertrust/wasabi/drm/TransactionType;

    const-string v1, "LINK_RELEASE"

    invoke-direct {v0, v1, v7}, Lcom/intertrust/wasabi/drm/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intertrust/wasabi/drm/TransactionType;->LINK_RELEASE:Lcom/intertrust/wasabi/drm/TransactionType;

    .line 27
    new-instance v0, Lcom/intertrust/wasabi/drm/TransactionType;

    const-string v1, "SECURITY_DATA_UPDATE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/intertrust/wasabi/drm/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intertrust/wasabi/drm/TransactionType;->SECURITY_DATA_UPDATE:Lcom/intertrust/wasabi/drm/TransactionType;

    .line 28
    new-instance v0, Lcom/intertrust/wasabi/drm/TransactionType;

    const-string v1, "SECURITY_DATA_CERTIFICATION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/intertrust/wasabi/drm/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intertrust/wasabi/drm/TransactionType;->SECURITY_DATA_CERTIFICATION:Lcom/intertrust/wasabi/drm/TransactionType;

    .line 29
    new-instance v0, Lcom/intertrust/wasabi/drm/TransactionType;

    const-string v1, "SUSPENSION_LIST_UPDATE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/intertrust/wasabi/drm/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intertrust/wasabi/drm/TransactionType;->SUSPENSION_LIST_UPDATE:Lcom/intertrust/wasabi/drm/TransactionType;

    .line 30
    new-instance v0, Lcom/intertrust/wasabi/drm/TransactionType;

    const-string v1, "METERING_DATA_UPDATE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/intertrust/wasabi/drm/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intertrust/wasabi/drm/TransactionType;->METERING_DATA_UPDATE:Lcom/intertrust/wasabi/drm/TransactionType;

    .line 31
    new-instance v0, Lcom/intertrust/wasabi/drm/TransactionType;

    const-string v1, "LICENSE_ACQUISITION"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/intertrust/wasabi/drm/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intertrust/wasabi/drm/TransactionType;->LICENSE_ACQUISITION:Lcom/intertrust/wasabi/drm/TransactionType;

    .line 32
    new-instance v0, Lcom/intertrust/wasabi/drm/TransactionType;

    const-string v1, "CRL_UPDATE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/intertrust/wasabi/drm/TransactionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/intertrust/wasabi/drm/TransactionType;->CRL_UPDATE:Lcom/intertrust/wasabi/drm/TransactionType;

    .line 21
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/intertrust/wasabi/drm/TransactionType;

    sget-object v1, Lcom/intertrust/wasabi/drm/TransactionType;->SERVICE_TOKEN_PROCESSING:Lcom/intertrust/wasabi/drm/TransactionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/intertrust/wasabi/drm/TransactionType;->PERSONALIZATION:Lcom/intertrust/wasabi/drm/TransactionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/intertrust/wasabi/drm/TransactionType;->USER_REGISTRATION:Lcom/intertrust/wasabi/drm/TransactionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/intertrust/wasabi/drm/TransactionType;->LINK_ACQUISITION:Lcom/intertrust/wasabi/drm/TransactionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/intertrust/wasabi/drm/TransactionType;->LINK_RELEASE:Lcom/intertrust/wasabi/drm/TransactionType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/intertrust/wasabi/drm/TransactionType;->SECURITY_DATA_UPDATE:Lcom/intertrust/wasabi/drm/TransactionType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/intertrust/wasabi/drm/TransactionType;->SECURITY_DATA_CERTIFICATION:Lcom/intertrust/wasabi/drm/TransactionType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/intertrust/wasabi/drm/TransactionType;->SUSPENSION_LIST_UPDATE:Lcom/intertrust/wasabi/drm/TransactionType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/intertrust/wasabi/drm/TransactionType;->METERING_DATA_UPDATE:Lcom/intertrust/wasabi/drm/TransactionType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/intertrust/wasabi/drm/TransactionType;->LICENSE_ACQUISITION:Lcom/intertrust/wasabi/drm/TransactionType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/intertrust/wasabi/drm/TransactionType;->CRL_UPDATE:Lcom/intertrust/wasabi/drm/TransactionType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/intertrust/wasabi/drm/TransactionType;->$VALUES:[Lcom/intertrust/wasabi/drm/TransactionType;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/intertrust/wasabi/drm/TransactionType;
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/intertrust/wasabi/drm/TransactionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/intertrust/wasabi/drm/TransactionType;

    return-object v0
.end method

.method public static values()[Lcom/intertrust/wasabi/drm/TransactionType;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/intertrust/wasabi/drm/TransactionType;->$VALUES:[Lcom/intertrust/wasabi/drm/TransactionType;

    invoke-virtual {v0}, [Lcom/intertrust/wasabi/drm/TransactionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/intertrust/wasabi/drm/TransactionType;

    return-object v0
.end method
