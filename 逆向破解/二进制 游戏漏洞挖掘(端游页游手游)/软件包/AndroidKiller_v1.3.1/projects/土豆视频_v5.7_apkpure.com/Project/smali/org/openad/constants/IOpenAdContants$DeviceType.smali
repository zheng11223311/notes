.class public final enum Lorg/openad/constants/IOpenAdContants$DeviceType;
.super Ljava/lang/Enum;

# interfaces
.implements Lorg/openad/constants/IOpenAdEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openad/constants/IOpenAdContants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/openad/constants/IOpenAdContants$DeviceType;",
        ">;",
        "Lorg/openad/constants/IOpenAdEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openad/constants/IOpenAdContants$DeviceType;

.field public static final enum PHONE:Lorg/openad/constants/IOpenAdContants$DeviceType;

.field public static final enum TABLET:Lorg/openad/constants/IOpenAdContants$DeviceType;

.field public static final enum UNKNOWN:Lorg/openad/constants/IOpenAdContants$DeviceType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/openad/constants/IOpenAdContants$DeviceType;

    const-string v1, "UNKNOWN"

    const-string/jumbo v2, "unknown"

    invoke-direct {v0, v1, v3, v2}, Lorg/openad/constants/IOpenAdContants$DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$DeviceType;->UNKNOWN:Lorg/openad/constants/IOpenAdContants$DeviceType;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$DeviceType;

    const-string v1, "TABLET"

    const-string/jumbo v2, "tablet"

    invoke-direct {v0, v1, v4, v2}, Lorg/openad/constants/IOpenAdContants$DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$DeviceType;->TABLET:Lorg/openad/constants/IOpenAdContants$DeviceType;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$DeviceType;

    const-string v1, "PHONE"

    const-string v2, "phone"

    invoke-direct {v0, v1, v5, v2}, Lorg/openad/constants/IOpenAdContants$DeviceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$DeviceType;->PHONE:Lorg/openad/constants/IOpenAdContants$DeviceType;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/openad/constants/IOpenAdContants$DeviceType;

    sget-object v1, Lorg/openad/constants/IOpenAdContants$DeviceType;->UNKNOWN:Lorg/openad/constants/IOpenAdContants$DeviceType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/openad/constants/IOpenAdContants$DeviceType;->TABLET:Lorg/openad/constants/IOpenAdContants$DeviceType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/openad/constants/IOpenAdContants$DeviceType;->PHONE:Lorg/openad/constants/IOpenAdContants$DeviceType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/openad/constants/IOpenAdContants$DeviceType;->$VALUES:[Lorg/openad/constants/IOpenAdContants$DeviceType;

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

    iput-object p3, p0, Lorg/openad/constants/IOpenAdContants$DeviceType;->value:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/openad/constants/IOpenAdContants$DeviceType;
    .locals 5

    invoke-static {}, Lorg/openad/constants/IOpenAdContants$DeviceType;->values()[Lorg/openad/constants/IOpenAdContants$DeviceType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget-object v4, v0, Lorg/openad/constants/IOpenAdContants$DeviceType;->value:Ljava/lang/String;

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

.method public static valueOf(Ljava/lang/String;)Lorg/openad/constants/IOpenAdContants$DeviceType;
    .locals 1

    const-class v0, Lorg/openad/constants/IOpenAdContants$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openad/constants/IOpenAdContants$DeviceType;

    return-object v0
.end method

.method public static values()[Lorg/openad/constants/IOpenAdContants$DeviceType;
    .locals 1

    sget-object v0, Lorg/openad/constants/IOpenAdContants$DeviceType;->$VALUES:[Lorg/openad/constants/IOpenAdContants$DeviceType;

    invoke-virtual {v0}, [Lorg/openad/constants/IOpenAdContants$DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openad/constants/IOpenAdContants$DeviceType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openad/constants/IOpenAdContants$DeviceType;->value:Ljava/lang/String;

    return-object v0
.end method
