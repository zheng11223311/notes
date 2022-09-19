.class public final enum Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;
.super Ljava/lang/Enum;

# interfaces
.implements Lorg/openad/constants/IOpenAdEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openad/constants/IOpenAdContants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MraidCloseRegionPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;",
        ">;",
        "Lorg/openad/constants/IOpenAdEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;

.field public static final enum BOTTOM_CENTER:Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;

.field public static final enum BOTTOM_LEFT:Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;

.field public static final enum BOTTOM_RIGTH:Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;

.field public static final enum CENTER:Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;

.field public static final enum TOP_CENTER:Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;

.field public static final enum TOP_LEFT:Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;

.field public static final enum TOP_RIGHT:Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;


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

    new-instance v0, Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;

    const-string v1, "TOP_LEFT"

    const-string/jumbo v2, "top-left"

    invoke-direct {v0, v1, v4, v2}, Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;->TOP_LEFT:Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;

    const-string v1, "TOP_CENTER"

    const-string/jumbo v2, "top-center"

    invoke-direct {v0, v1, v5, v2}, Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;->TOP_CENTER:Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;

    const-string v1, "TOP_RIGHT"

    const-string/jumbo v2, "top-right"

    invoke-direct {v0, v1, v6, v2}, Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;->TOP_RIGHT:Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;

    const-string v1, "CENTER"

    const-string v2, "center"

    invoke-direct {v0, v1, v7, v2}, Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;->CENTER:Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;

    const-string v1, "BOTTOM_LEFT"

    const-string v2, "bottom-left"

    invoke-direct {v0, v1, v8, v2}, Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;->BOTTOM_LEFT:Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;

    const-string v1, "BOTTOM_CENTER"

    const/4 v2, 0x5

    const-string v3, "bottom-center"

    invoke-direct {v0, v1, v2, v3}, Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;->BOTTOM_CENTER:Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;

    const-string v1, "BOTTOM_RIGTH"

    const/4 v2, 0x6

    const-string v3, "bottom-right"

    invoke-direct {v0, v1, v2, v3}, Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;->BOTTOM_RIGTH:Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;

    const/4 v0, 0x7

    new-array v0, v0, [Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;

    sget-object v1, Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;->TOP_LEFT:Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;

    aput-object v1, v0, v4

    sget-object v1, Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;->TOP_CENTER:Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;

    aput-object v1, v0, v5

    sget-object v1, Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;->TOP_RIGHT:Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;

    aput-object v1, v0, v6

    sget-object v1, Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;->CENTER:Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;

    aput-object v1, v0, v7

    sget-object v1, Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;->BOTTOM_LEFT:Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;->BOTTOM_CENTER:Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;->BOTTOM_RIGTH:Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;

    aput-object v2, v0, v1

    sput-object v0, Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;->$VALUES:[Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;

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

    iput-object p3, p0, Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;->value:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;
    .locals 5

    invoke-static {}, Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;->values()[Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget-object v4, v0, Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;->value:Ljava/lang/String;

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

.method public static valueOf(Ljava/lang/String;)Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;
    .locals 1

    const-class v0, Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;

    return-object v0
.end method

.method public static values()[Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;
    .locals 1

    sget-object v0, Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;->$VALUES:[Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;

    invoke-virtual {v0}, [Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openad/constants/IOpenAdContants$MraidCloseRegionPosition;->value:Ljava/lang/String;

    return-object v0
.end method
