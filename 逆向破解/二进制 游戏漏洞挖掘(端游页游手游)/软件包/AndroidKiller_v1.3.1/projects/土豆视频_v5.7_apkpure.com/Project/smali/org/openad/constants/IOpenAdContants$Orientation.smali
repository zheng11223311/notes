.class public final enum Lorg/openad/constants/IOpenAdContants$Orientation;
.super Ljava/lang/Enum;

# interfaces
.implements Lorg/openad/constants/IOpenAdEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openad/constants/IOpenAdContants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/openad/constants/IOpenAdContants$Orientation;",
        ">;",
        "Lorg/openad/constants/IOpenAdEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openad/constants/IOpenAdContants$Orientation;

.field public static final enum LANDSCAPE:Lorg/openad/constants/IOpenAdContants$Orientation;

.field public static final enum NONE:Lorg/openad/constants/IOpenAdContants$Orientation;

.field public static final enum PORTRAIT:Lorg/openad/constants/IOpenAdContants$Orientation;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/openad/constants/IOpenAdContants$Orientation;

    const-string v1, "PORTRAIT"

    const-string v2, "portrait"

    invoke-direct {v0, v1, v3, v2}, Lorg/openad/constants/IOpenAdContants$Orientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$Orientation;->PORTRAIT:Lorg/openad/constants/IOpenAdContants$Orientation;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$Orientation;

    const-string v1, "LANDSCAPE"

    const-string v2, "landscape"

    invoke-direct {v0, v1, v4, v2}, Lorg/openad/constants/IOpenAdContants$Orientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$Orientation;->LANDSCAPE:Lorg/openad/constants/IOpenAdContants$Orientation;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$Orientation;

    const-string v1, "NONE"

    const-string v2, "none"

    invoke-direct {v0, v1, v5, v2}, Lorg/openad/constants/IOpenAdContants$Orientation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$Orientation;->NONE:Lorg/openad/constants/IOpenAdContants$Orientation;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/openad/constants/IOpenAdContants$Orientation;

    sget-object v1, Lorg/openad/constants/IOpenAdContants$Orientation;->PORTRAIT:Lorg/openad/constants/IOpenAdContants$Orientation;

    aput-object v1, v0, v3

    sget-object v1, Lorg/openad/constants/IOpenAdContants$Orientation;->LANDSCAPE:Lorg/openad/constants/IOpenAdContants$Orientation;

    aput-object v1, v0, v4

    sget-object v1, Lorg/openad/constants/IOpenAdContants$Orientation;->NONE:Lorg/openad/constants/IOpenAdContants$Orientation;

    aput-object v1, v0, v5

    sput-object v0, Lorg/openad/constants/IOpenAdContants$Orientation;->$VALUES:[Lorg/openad/constants/IOpenAdContants$Orientation;

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

    iput-object p3, p0, Lorg/openad/constants/IOpenAdContants$Orientation;->value:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/openad/constants/IOpenAdContants$Orientation;
    .locals 5

    invoke-static {}, Lorg/openad/constants/IOpenAdContants$Orientation;->values()[Lorg/openad/constants/IOpenAdContants$Orientation;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget-object v4, v0, Lorg/openad/constants/IOpenAdContants$Orientation;->value:Ljava/lang/String;

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

.method public static valueOf(Ljava/lang/String;)Lorg/openad/constants/IOpenAdContants$Orientation;
    .locals 1

    const-class v0, Lorg/openad/constants/IOpenAdContants$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openad/constants/IOpenAdContants$Orientation;

    return-object v0
.end method

.method public static values()[Lorg/openad/constants/IOpenAdContants$Orientation;
    .locals 1

    sget-object v0, Lorg/openad/constants/IOpenAdContants$Orientation;->$VALUES:[Lorg/openad/constants/IOpenAdContants$Orientation;

    invoke-virtual {v0}, [Lorg/openad/constants/IOpenAdContants$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openad/constants/IOpenAdContants$Orientation;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openad/constants/IOpenAdContants$Orientation;->value:Ljava/lang/String;

    return-object v0
.end method
