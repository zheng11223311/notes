.class public final enum Lorg/openad/constants/IOpenAdContants$AdUnitType;
.super Ljava/lang/Enum;

# interfaces
.implements Lorg/openad/constants/IOpenAdEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openad/constants/IOpenAdContants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdUnitType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/openad/constants/IOpenAdContants$AdUnitType;",
        ">;",
        "Lorg/openad/constants/IOpenAdEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openad/constants/IOpenAdContants$AdUnitType;

.field public static final enum HTML5:Lorg/openad/constants/IOpenAdContants$AdUnitType;

.field public static final enum IMAGE:Lorg/openad/constants/IOpenAdContants$AdUnitType;

.field public static final enum VIDEO:Lorg/openad/constants/IOpenAdContants$AdUnitType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/openad/constants/IOpenAdContants$AdUnitType;

    const-string v1, "HTML5"

    const-string v2, "html5"

    invoke-direct {v0, v1, v3, v2}, Lorg/openad/constants/IOpenAdContants$AdUnitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$AdUnitType;->HTML5:Lorg/openad/constants/IOpenAdContants$AdUnitType;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$AdUnitType;

    const-string v1, "VIDEO"

    const-string/jumbo v2, "video"

    invoke-direct {v0, v1, v4, v2}, Lorg/openad/constants/IOpenAdContants$AdUnitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$AdUnitType;->VIDEO:Lorg/openad/constants/IOpenAdContants$AdUnitType;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$AdUnitType;

    const-string v1, "IMAGE"

    const-string v2, "image"

    invoke-direct {v0, v1, v5, v2}, Lorg/openad/constants/IOpenAdContants$AdUnitType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$AdUnitType;->IMAGE:Lorg/openad/constants/IOpenAdContants$AdUnitType;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/openad/constants/IOpenAdContants$AdUnitType;

    sget-object v1, Lorg/openad/constants/IOpenAdContants$AdUnitType;->HTML5:Lorg/openad/constants/IOpenAdContants$AdUnitType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/openad/constants/IOpenAdContants$AdUnitType;->VIDEO:Lorg/openad/constants/IOpenAdContants$AdUnitType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/openad/constants/IOpenAdContants$AdUnitType;->IMAGE:Lorg/openad/constants/IOpenAdContants$AdUnitType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/openad/constants/IOpenAdContants$AdUnitType;->$VALUES:[Lorg/openad/constants/IOpenAdContants$AdUnitType;

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

    iput-object p3, p0, Lorg/openad/constants/IOpenAdContants$AdUnitType;->value:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/openad/constants/IOpenAdContants$AdUnitType;
    .locals 5

    invoke-static {}, Lorg/openad/constants/IOpenAdContants$AdUnitType;->values()[Lorg/openad/constants/IOpenAdContants$AdUnitType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget-object v4, v0, Lorg/openad/constants/IOpenAdContants$AdUnitType;->value:Ljava/lang/String;

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

.method public static valueOf(Ljava/lang/String;)Lorg/openad/constants/IOpenAdContants$AdUnitType;
    .locals 1

    const-class v0, Lorg/openad/constants/IOpenAdContants$AdUnitType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openad/constants/IOpenAdContants$AdUnitType;

    return-object v0
.end method

.method public static values()[Lorg/openad/constants/IOpenAdContants$AdUnitType;
    .locals 1

    sget-object v0, Lorg/openad/constants/IOpenAdContants$AdUnitType;->$VALUES:[Lorg/openad/constants/IOpenAdContants$AdUnitType;

    invoke-virtual {v0}, [Lorg/openad/constants/IOpenAdContants$AdUnitType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openad/constants/IOpenAdContants$AdUnitType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openad/constants/IOpenAdContants$AdUnitType;->value:Ljava/lang/String;

    return-object v0
.end method
