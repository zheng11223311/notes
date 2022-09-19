.class public final enum Lorg/openad/constants/IOpenAdContants$NetworkType;
.super Ljava/lang/Enum;

# interfaces
.implements Lorg/openad/constants/IOpenAdEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openad/constants/IOpenAdContants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/openad/constants/IOpenAdContants$NetworkType;",
        ">;",
        "Lorg/openad/constants/IOpenAdEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openad/constants/IOpenAdContants$NetworkType;

.field public static final enum CDMA:Lorg/openad/constants/IOpenAdContants$NetworkType;

.field public static final enum EDGE:Lorg/openad/constants/IOpenAdContants$NetworkType;

.field public static final enum EHRPD:Lorg/openad/constants/IOpenAdContants$NetworkType;

.field public static final enum EVDO_0:Lorg/openad/constants/IOpenAdContants$NetworkType;

.field public static final enum EVDO_A:Lorg/openad/constants/IOpenAdContants$NetworkType;

.field public static final enum EVDO_B:Lorg/openad/constants/IOpenAdContants$NetworkType;

.field public static final enum GPRS:Lorg/openad/constants/IOpenAdContants$NetworkType;

.field public static final enum HSDPA:Lorg/openad/constants/IOpenAdContants$NetworkType;

.field public static final enum HSPA:Lorg/openad/constants/IOpenAdContants$NetworkType;

.field public static final enum HSPAPlus:Lorg/openad/constants/IOpenAdContants$NetworkType;

.field public static final enum HSUPA:Lorg/openad/constants/IOpenAdContants$NetworkType;

.field public static final enum IDEN:Lorg/openad/constants/IOpenAdContants$NetworkType;

.field public static final enum LTE:Lorg/openad/constants/IOpenAdContants$NetworkType;

.field public static final enum LxRTT:Lorg/openad/constants/IOpenAdContants$NetworkType;

.field public static final enum UMTS:Lorg/openad/constants/IOpenAdContants$NetworkType;

.field public static final enum UNKNOWN:Lorg/openad/constants/IOpenAdContants$NetworkType;

.field public static final enum WIFI:Lorg/openad/constants/IOpenAdContants$NetworkType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lorg/openad/constants/IOpenAdContants$NetworkType;

    const-string v1, "WIFI"

    const-string v2, "1000"

    invoke-direct {v0, v1, v4, v2}, Lorg/openad/constants/IOpenAdContants$NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$NetworkType;->WIFI:Lorg/openad/constants/IOpenAdContants$NetworkType;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$NetworkType;

    const-string v1, "UNKNOWN"

    const-string v2, "0"

    invoke-direct {v0, v1, v5, v2}, Lorg/openad/constants/IOpenAdContants$NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$NetworkType;->UNKNOWN:Lorg/openad/constants/IOpenAdContants$NetworkType;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$NetworkType;

    const-string v1, "GPRS"

    const-string v2, "1"

    invoke-direct {v0, v1, v6, v2}, Lorg/openad/constants/IOpenAdContants$NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$NetworkType;->GPRS:Lorg/openad/constants/IOpenAdContants$NetworkType;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$NetworkType;

    const-string v1, "EDGE"

    const-string v2, "2"

    invoke-direct {v0, v1, v7, v2}, Lorg/openad/constants/IOpenAdContants$NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$NetworkType;->EDGE:Lorg/openad/constants/IOpenAdContants$NetworkType;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$NetworkType;

    const-string v1, "UMTS"

    const-string v2, "3"

    invoke-direct {v0, v1, v8, v2}, Lorg/openad/constants/IOpenAdContants$NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$NetworkType;->UMTS:Lorg/openad/constants/IOpenAdContants$NetworkType;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$NetworkType;

    const-string v1, "CDMA"

    const/4 v2, 0x5

    const-string v3, "4"

    invoke-direct {v0, v1, v2, v3}, Lorg/openad/constants/IOpenAdContants$NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$NetworkType;->CDMA:Lorg/openad/constants/IOpenAdContants$NetworkType;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$NetworkType;

    const-string v1, "EVDO_0"

    const/4 v2, 0x6

    const-string v3, "5"

    invoke-direct {v0, v1, v2, v3}, Lorg/openad/constants/IOpenAdContants$NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$NetworkType;->EVDO_0:Lorg/openad/constants/IOpenAdContants$NetworkType;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$NetworkType;

    const-string v1, "EVDO_A"

    const/4 v2, 0x7

    const-string v3, "6"

    invoke-direct {v0, v1, v2, v3}, Lorg/openad/constants/IOpenAdContants$NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$NetworkType;->EVDO_A:Lorg/openad/constants/IOpenAdContants$NetworkType;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$NetworkType;

    const-string v1, "LxRTT"

    const/16 v2, 0x8

    const-string v3, "7"

    invoke-direct {v0, v1, v2, v3}, Lorg/openad/constants/IOpenAdContants$NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$NetworkType;->LxRTT:Lorg/openad/constants/IOpenAdContants$NetworkType;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$NetworkType;

    const-string v1, "HSDPA"

    const/16 v2, 0x9

    const-string v3, "8"

    invoke-direct {v0, v1, v2, v3}, Lorg/openad/constants/IOpenAdContants$NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$NetworkType;->HSDPA:Lorg/openad/constants/IOpenAdContants$NetworkType;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$NetworkType;

    const-string v1, "HSUPA"

    const/16 v2, 0xa

    const-string v3, "9"

    invoke-direct {v0, v1, v2, v3}, Lorg/openad/constants/IOpenAdContants$NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$NetworkType;->HSUPA:Lorg/openad/constants/IOpenAdContants$NetworkType;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$NetworkType;

    const-string v1, "HSPA"

    const/16 v2, 0xb

    const-string v3, "10"

    invoke-direct {v0, v1, v2, v3}, Lorg/openad/constants/IOpenAdContants$NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$NetworkType;->HSPA:Lorg/openad/constants/IOpenAdContants$NetworkType;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$NetworkType;

    const-string v1, "IDEN"

    const/16 v2, 0xc

    const-string v3, "11"

    invoke-direct {v0, v1, v2, v3}, Lorg/openad/constants/IOpenAdContants$NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$NetworkType;->IDEN:Lorg/openad/constants/IOpenAdContants$NetworkType;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$NetworkType;

    const-string v1, "EVDO_B"

    const/16 v2, 0xd

    const-string v3, "12"

    invoke-direct {v0, v1, v2, v3}, Lorg/openad/constants/IOpenAdContants$NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$NetworkType;->EVDO_B:Lorg/openad/constants/IOpenAdContants$NetworkType;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$NetworkType;

    const-string v1, "LTE"

    const/16 v2, 0xe

    const-string v3, "13"

    invoke-direct {v0, v1, v2, v3}, Lorg/openad/constants/IOpenAdContants$NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$NetworkType;->LTE:Lorg/openad/constants/IOpenAdContants$NetworkType;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$NetworkType;

    const-string v1, "EHRPD"

    const/16 v2, 0xf

    const-string v3, "14"

    invoke-direct {v0, v1, v2, v3}, Lorg/openad/constants/IOpenAdContants$NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$NetworkType;->EHRPD:Lorg/openad/constants/IOpenAdContants$NetworkType;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$NetworkType;

    const-string v1, "HSPAPlus"

    const/16 v2, 0x10

    const-string v3, "15"

    invoke-direct {v0, v1, v2, v3}, Lorg/openad/constants/IOpenAdContants$NetworkType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$NetworkType;->HSPAPlus:Lorg/openad/constants/IOpenAdContants$NetworkType;

    const/16 v0, 0x11

    new-array v0, v0, [Lorg/openad/constants/IOpenAdContants$NetworkType;

    sget-object v1, Lorg/openad/constants/IOpenAdContants$NetworkType;->WIFI:Lorg/openad/constants/IOpenAdContants$NetworkType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/openad/constants/IOpenAdContants$NetworkType;->UNKNOWN:Lorg/openad/constants/IOpenAdContants$NetworkType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/openad/constants/IOpenAdContants$NetworkType;->GPRS:Lorg/openad/constants/IOpenAdContants$NetworkType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/openad/constants/IOpenAdContants$NetworkType;->EDGE:Lorg/openad/constants/IOpenAdContants$NetworkType;

    aput-object v1, v0, v7

    sget-object v1, Lorg/openad/constants/IOpenAdContants$NetworkType;->UMTS:Lorg/openad/constants/IOpenAdContants$NetworkType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/openad/constants/IOpenAdContants$NetworkType;->CDMA:Lorg/openad/constants/IOpenAdContants$NetworkType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/openad/constants/IOpenAdContants$NetworkType;->EVDO_0:Lorg/openad/constants/IOpenAdContants$NetworkType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/openad/constants/IOpenAdContants$NetworkType;->EVDO_A:Lorg/openad/constants/IOpenAdContants$NetworkType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/openad/constants/IOpenAdContants$NetworkType;->LxRTT:Lorg/openad/constants/IOpenAdContants$NetworkType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/openad/constants/IOpenAdContants$NetworkType;->HSDPA:Lorg/openad/constants/IOpenAdContants$NetworkType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/openad/constants/IOpenAdContants$NetworkType;->HSUPA:Lorg/openad/constants/IOpenAdContants$NetworkType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/openad/constants/IOpenAdContants$NetworkType;->HSPA:Lorg/openad/constants/IOpenAdContants$NetworkType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/openad/constants/IOpenAdContants$NetworkType;->IDEN:Lorg/openad/constants/IOpenAdContants$NetworkType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/openad/constants/IOpenAdContants$NetworkType;->EVDO_B:Lorg/openad/constants/IOpenAdContants$NetworkType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/openad/constants/IOpenAdContants$NetworkType;->LTE:Lorg/openad/constants/IOpenAdContants$NetworkType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/openad/constants/IOpenAdContants$NetworkType;->EHRPD:Lorg/openad/constants/IOpenAdContants$NetworkType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/openad/constants/IOpenAdContants$NetworkType;->HSPAPlus:Lorg/openad/constants/IOpenAdContants$NetworkType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/openad/constants/IOpenAdContants$NetworkType;->$VALUES:[Lorg/openad/constants/IOpenAdContants$NetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/openad/constants/IOpenAdContants$NetworkType;->value:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/openad/constants/IOpenAdContants$NetworkType;
    .locals 5

    invoke-static {}, Lorg/openad/constants/IOpenAdContants$NetworkType;->values()[Lorg/openad/constants/IOpenAdContants$NetworkType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget-object v4, v0, Lorg/openad/constants/IOpenAdContants$NetworkType;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openad/constants/IOpenAdContants$NetworkType;
    .locals 1

    const-class v0, Lorg/openad/constants/IOpenAdContants$NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openad/constants/IOpenAdContants$NetworkType;

    return-object v0
.end method

.method public static values()[Lorg/openad/constants/IOpenAdContants$NetworkType;
    .locals 1

    sget-object v0, Lorg/openad/constants/IOpenAdContants$NetworkType;->$VALUES:[Lorg/openad/constants/IOpenAdContants$NetworkType;

    invoke-virtual {v0}, [Lorg/openad/constants/IOpenAdContants$NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openad/constants/IOpenAdContants$NetworkType;

    return-object v0
.end method


# virtual methods
.method public getIntValue()I
    .locals 1

    invoke-virtual {p0}, Lorg/openad/constants/IOpenAdContants$NetworkType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openad/constants/IOpenAdContants$NetworkType;->value:Ljava/lang/String;

    return-object v0
.end method
