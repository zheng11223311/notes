.class public final enum Lorg/openad/constants/IOpenAdContants$ViewState;
.super Ljava/lang/Enum;

# interfaces
.implements Lorg/openad/constants/IOpenAdEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openad/constants/IOpenAdContants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/openad/constants/IOpenAdContants$ViewState;",
        ">;",
        "Lorg/openad/constants/IOpenAdEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openad/constants/IOpenAdContants$ViewState;

.field public static final enum DEFAULT:Lorg/openad/constants/IOpenAdContants$ViewState;

.field public static final enum EXPANDED:Lorg/openad/constants/IOpenAdContants$ViewState;

.field public static final enum HIDDEN:Lorg/openad/constants/IOpenAdContants$ViewState;

.field public static final enum LEFT_BEHIND:Lorg/openad/constants/IOpenAdContants$ViewState;

.field public static final enum LOADING:Lorg/openad/constants/IOpenAdContants$ViewState;

.field public static final enum OPENED:Lorg/openad/constants/IOpenAdContants$ViewState;

.field public static final enum RESIZED:Lorg/openad/constants/IOpenAdContants$ViewState;


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

    new-instance v0, Lorg/openad/constants/IOpenAdContants$ViewState;

    const-string v1, "LOADING"

    const-string v2, "loading"

    invoke-direct {v0, v1, v4, v2}, Lorg/openad/constants/IOpenAdContants$ViewState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$ViewState;->LOADING:Lorg/openad/constants/IOpenAdContants$ViewState;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$ViewState;

    const-string v1, "DEFAULT"

    const-string v2, "default"

    invoke-direct {v0, v1, v5, v2}, Lorg/openad/constants/IOpenAdContants$ViewState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$ViewState;->DEFAULT:Lorg/openad/constants/IOpenAdContants$ViewState;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$ViewState;

    const-string v1, "RESIZED"

    const-string/jumbo v2, "resized"

    invoke-direct {v0, v1, v6, v2}, Lorg/openad/constants/IOpenAdContants$ViewState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$ViewState;->RESIZED:Lorg/openad/constants/IOpenAdContants$ViewState;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$ViewState;

    const-string v1, "EXPANDED"

    const-string v2, "expanded"

    invoke-direct {v0, v1, v7, v2}, Lorg/openad/constants/IOpenAdContants$ViewState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$ViewState;->EXPANDED:Lorg/openad/constants/IOpenAdContants$ViewState;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$ViewState;

    const-string v1, "HIDDEN"

    const-string v2, "hidden"

    invoke-direct {v0, v1, v8, v2}, Lorg/openad/constants/IOpenAdContants$ViewState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$ViewState;->HIDDEN:Lorg/openad/constants/IOpenAdContants$ViewState;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$ViewState;

    const-string v1, "LEFT_BEHIND"

    const/4 v2, 0x5

    const-string v3, "left_behind"

    invoke-direct {v0, v1, v2, v3}, Lorg/openad/constants/IOpenAdContants$ViewState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$ViewState;->LEFT_BEHIND:Lorg/openad/constants/IOpenAdContants$ViewState;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$ViewState;

    const-string v1, "OPENED"

    const/4 v2, 0x6

    const-string v3, "opened"

    invoke-direct {v0, v1, v2, v3}, Lorg/openad/constants/IOpenAdContants$ViewState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$ViewState;->OPENED:Lorg/openad/constants/IOpenAdContants$ViewState;

    const/4 v0, 0x7

    new-array v0, v0, [Lorg/openad/constants/IOpenAdContants$ViewState;

    sget-object v1, Lorg/openad/constants/IOpenAdContants$ViewState;->LOADING:Lorg/openad/constants/IOpenAdContants$ViewState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/openad/constants/IOpenAdContants$ViewState;->DEFAULT:Lorg/openad/constants/IOpenAdContants$ViewState;

    aput-object v1, v0, v5

    sget-object v1, Lorg/openad/constants/IOpenAdContants$ViewState;->RESIZED:Lorg/openad/constants/IOpenAdContants$ViewState;

    aput-object v1, v0, v6

    sget-object v1, Lorg/openad/constants/IOpenAdContants$ViewState;->EXPANDED:Lorg/openad/constants/IOpenAdContants$ViewState;

    aput-object v1, v0, v7

    sget-object v1, Lorg/openad/constants/IOpenAdContants$ViewState;->HIDDEN:Lorg/openad/constants/IOpenAdContants$ViewState;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/openad/constants/IOpenAdContants$ViewState;->LEFT_BEHIND:Lorg/openad/constants/IOpenAdContants$ViewState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/openad/constants/IOpenAdContants$ViewState;->OPENED:Lorg/openad/constants/IOpenAdContants$ViewState;

    aput-object v2, v0, v1

    sput-object v0, Lorg/openad/constants/IOpenAdContants$ViewState;->$VALUES:[Lorg/openad/constants/IOpenAdContants$ViewState;

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

    iput-object p3, p0, Lorg/openad/constants/IOpenAdContants$ViewState;->value:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/openad/constants/IOpenAdContants$ViewState;
    .locals 5

    invoke-static {}, Lorg/openad/constants/IOpenAdContants$ViewState;->values()[Lorg/openad/constants/IOpenAdContants$ViewState;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget-object v4, v0, Lorg/openad/constants/IOpenAdContants$ViewState;->value:Ljava/lang/String;

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

.method public static valueOf(Ljava/lang/String;)Lorg/openad/constants/IOpenAdContants$ViewState;
    .locals 1

    const-class v0, Lorg/openad/constants/IOpenAdContants$ViewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openad/constants/IOpenAdContants$ViewState;

    return-object v0
.end method

.method public static values()[Lorg/openad/constants/IOpenAdContants$ViewState;
    .locals 1

    sget-object v0, Lorg/openad/constants/IOpenAdContants$ViewState;->$VALUES:[Lorg/openad/constants/IOpenAdContants$ViewState;

    invoke-virtual {v0}, [Lorg/openad/constants/IOpenAdContants$ViewState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openad/constants/IOpenAdContants$ViewState;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openad/constants/IOpenAdContants$ViewState;->value:Ljava/lang/String;

    return-object v0
.end method
