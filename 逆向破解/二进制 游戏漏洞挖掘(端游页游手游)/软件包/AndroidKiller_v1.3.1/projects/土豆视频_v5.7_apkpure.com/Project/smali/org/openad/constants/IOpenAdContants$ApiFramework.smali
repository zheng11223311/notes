.class public final enum Lorg/openad/constants/IOpenAdContants$ApiFramework;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openad/constants/IOpenAdContants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApiFramework"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/openad/constants/IOpenAdContants$ApiFramework;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openad/constants/IOpenAdContants$ApiFramework;

.field public static final enum FULL_PACKAGE_OF_MOBILE_RICH_AD_INTERFACE:Lorg/openad/constants/IOpenAdContants$ApiFramework;

.field public static final enum MRAID_1:Lorg/openad/constants/IOpenAdContants$ApiFramework;

.field public static final enum MRAID_2:Lorg/openad/constants/IOpenAdContants$ApiFramework;

.field public static final enum ORMMA_1:Lorg/openad/constants/IOpenAdContants$ApiFramework;

.field public static final enum STATIC_IMAGE:Lorg/openad/constants/IOpenAdContants$ApiFramework;

.field public static final enum VIDEO:Lorg/openad/constants/IOpenAdContants$ApiFramework;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/openad/constants/IOpenAdContants$ApiFramework;

    const-string v1, "MRAID_1"

    invoke-direct {v0, v1, v3}, Lorg/openad/constants/IOpenAdContants$ApiFramework;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$ApiFramework;->MRAID_1:Lorg/openad/constants/IOpenAdContants$ApiFramework;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$ApiFramework;

    const-string v1, "MRAID_2"

    invoke-direct {v0, v1, v4}, Lorg/openad/constants/IOpenAdContants$ApiFramework;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$ApiFramework;->MRAID_2:Lorg/openad/constants/IOpenAdContants$ApiFramework;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$ApiFramework;

    const-string v1, "ORMMA_1"

    invoke-direct {v0, v1, v5}, Lorg/openad/constants/IOpenAdContants$ApiFramework;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$ApiFramework;->ORMMA_1:Lorg/openad/constants/IOpenAdContants$ApiFramework;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$ApiFramework;

    const-string v1, "FULL_PACKAGE_OF_MOBILE_RICH_AD_INTERFACE"

    invoke-direct {v0, v1, v6}, Lorg/openad/constants/IOpenAdContants$ApiFramework;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$ApiFramework;->FULL_PACKAGE_OF_MOBILE_RICH_AD_INTERFACE:Lorg/openad/constants/IOpenAdContants$ApiFramework;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$ApiFramework;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v7}, Lorg/openad/constants/IOpenAdContants$ApiFramework;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$ApiFramework;->VIDEO:Lorg/openad/constants/IOpenAdContants$ApiFramework;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$ApiFramework;

    const-string v1, "STATIC_IMAGE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/openad/constants/IOpenAdContants$ApiFramework;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$ApiFramework;->STATIC_IMAGE:Lorg/openad/constants/IOpenAdContants$ApiFramework;

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/openad/constants/IOpenAdContants$ApiFramework;

    sget-object v1, Lorg/openad/constants/IOpenAdContants$ApiFramework;->MRAID_1:Lorg/openad/constants/IOpenAdContants$ApiFramework;

    aput-object v1, v0, v3

    sget-object v1, Lorg/openad/constants/IOpenAdContants$ApiFramework;->MRAID_2:Lorg/openad/constants/IOpenAdContants$ApiFramework;

    aput-object v1, v0, v4

    sget-object v1, Lorg/openad/constants/IOpenAdContants$ApiFramework;->ORMMA_1:Lorg/openad/constants/IOpenAdContants$ApiFramework;

    aput-object v1, v0, v5

    sget-object v1, Lorg/openad/constants/IOpenAdContants$ApiFramework;->FULL_PACKAGE_OF_MOBILE_RICH_AD_INTERFACE:Lorg/openad/constants/IOpenAdContants$ApiFramework;

    aput-object v1, v0, v6

    sget-object v1, Lorg/openad/constants/IOpenAdContants$ApiFramework;->VIDEO:Lorg/openad/constants/IOpenAdContants$ApiFramework;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/openad/constants/IOpenAdContants$ApiFramework;->STATIC_IMAGE:Lorg/openad/constants/IOpenAdContants$ApiFramework;

    aput-object v2, v0, v1

    sput-object v0, Lorg/openad/constants/IOpenAdContants$ApiFramework;->$VALUES:[Lorg/openad/constants/IOpenAdContants$ApiFramework;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openad/constants/IOpenAdContants$ApiFramework;
    .locals 1

    const-class v0, Lorg/openad/constants/IOpenAdContants$ApiFramework;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openad/constants/IOpenAdContants$ApiFramework;

    return-object v0
.end method

.method public static values()[Lorg/openad/constants/IOpenAdContants$ApiFramework;
    .locals 1

    sget-object v0, Lorg/openad/constants/IOpenAdContants$ApiFramework;->$VALUES:[Lorg/openad/constants/IOpenAdContants$ApiFramework;

    invoke-virtual {v0}, [Lorg/openad/constants/IOpenAdContants$ApiFramework;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openad/constants/IOpenAdContants$ApiFramework;

    return-object v0
.end method
