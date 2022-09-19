.class public final enum Lorg/openad/constants/IOpenAdContants$AdSlotType;
.super Ljava/lang/Enum;

# interfaces
.implements Lorg/openad/constants/IOpenAdEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openad/constants/IOpenAdContants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdSlotType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/openad/constants/IOpenAdContants$AdSlotType;",
        ">;",
        "Lorg/openad/constants/IOpenAdEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openad/constants/IOpenAdContants$AdSlotType;

.field public static final enum DISPLAY:Lorg/openad/constants/IOpenAdContants$AdSlotType;

.field public static final enum MIDROLL:Lorg/openad/constants/IOpenAdContants$AdSlotType;

.field public static final enum OVERLAY:Lorg/openad/constants/IOpenAdContants$AdSlotType;

.field public static final enum PAUSEROLL:Lorg/openad/constants/IOpenAdContants$AdSlotType;

.field public static final enum POSTROLL:Lorg/openad/constants/IOpenAdContants$AdSlotType;

.field public static final enum PREROLL:Lorg/openad/constants/IOpenAdContants$AdSlotType;

.field public static final enum UNKNOWN:Lorg/openad/constants/IOpenAdContants$AdSlotType;


# instance fields
.field private final code:I

.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lorg/openad/constants/IOpenAdContants$AdSlotType;

    const-string v1, "UNKNOWN"

    const-string/jumbo v2, "unknown"

    const v3, -0xf423f

    invoke-direct {v0, v1, v5, v2, v3}, Lorg/openad/constants/IOpenAdContants$AdSlotType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$AdSlotType;->UNKNOWN:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$AdSlotType;

    const-string v1, "PREROLL"

    const-string v2, "preroll"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v6, v2, v3}, Lorg/openad/constants/IOpenAdContants$AdSlotType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$AdSlotType;->PREROLL:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$AdSlotType;

    const-string v1, "MIDROLL"

    const-string v2, "midroll"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v7, v2, v3}, Lorg/openad/constants/IOpenAdContants$AdSlotType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$AdSlotType;->MIDROLL:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$AdSlotType;

    const-string v1, "POSTROLL"

    const-string v2, "postroll"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v8, v2, v3}, Lorg/openad/constants/IOpenAdContants$AdSlotType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$AdSlotType;->POSTROLL:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$AdSlotType;

    const-string v1, "PAUSEROLL"

    const-string v2, "pauseroll"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v9, v2, v3}, Lorg/openad/constants/IOpenAdContants$AdSlotType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$AdSlotType;->PAUSEROLL:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$AdSlotType;

    const-string v1, "OVERLAY"

    const/4 v2, 0x5

    const-string v3, "overlay"

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/openad/constants/IOpenAdContants$AdSlotType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$AdSlotType;->OVERLAY:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$AdSlotType;

    const-string v1, "DISPLAY"

    const/4 v2, 0x6

    const-string v3, "display"

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/openad/constants/IOpenAdContants$AdSlotType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$AdSlotType;->DISPLAY:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    const/4 v0, 0x7

    new-array v0, v0, [Lorg/openad/constants/IOpenAdContants$AdSlotType;

    sget-object v1, Lorg/openad/constants/IOpenAdContants$AdSlotType;->UNKNOWN:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/openad/constants/IOpenAdContants$AdSlotType;->PREROLL:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/openad/constants/IOpenAdContants$AdSlotType;->MIDROLL:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    aput-object v1, v0, v7

    sget-object v1, Lorg/openad/constants/IOpenAdContants$AdSlotType;->POSTROLL:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    aput-object v1, v0, v8

    sget-object v1, Lorg/openad/constants/IOpenAdContants$AdSlotType;->PAUSEROLL:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lorg/openad/constants/IOpenAdContants$AdSlotType;->OVERLAY:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/openad/constants/IOpenAdContants$AdSlotType;->DISPLAY:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/openad/constants/IOpenAdContants$AdSlotType;->$VALUES:[Lorg/openad/constants/IOpenAdContants$AdSlotType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/openad/constants/IOpenAdContants$AdSlotType;->value:Ljava/lang/String;

    iput p4, p0, Lorg/openad/constants/IOpenAdContants$AdSlotType;->code:I

    return-void
.end method

.method public static parse(I)Lorg/openad/constants/IOpenAdContants$AdSlotType;
    .locals 5

    invoke-static {}, Lorg/openad/constants/IOpenAdContants$AdSlotType;->values()[Lorg/openad/constants/IOpenAdContants$AdSlotType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget v4, v0, Lorg/openad/constants/IOpenAdContants$AdSlotType;->code:I

    if-ne v4, p0, :cond_0

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

.method public static parse(Ljava/lang/String;)Lorg/openad/constants/IOpenAdContants$AdSlotType;
    .locals 5

    invoke-static {}, Lorg/openad/constants/IOpenAdContants$AdSlotType;->values()[Lorg/openad/constants/IOpenAdContants$AdSlotType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget-object v4, v0, Lorg/openad/constants/IOpenAdContants$AdSlotType;->value:Ljava/lang/String;

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

.method public static valueOf(Ljava/lang/String;)Lorg/openad/constants/IOpenAdContants$AdSlotType;
    .locals 1

    const-class v0, Lorg/openad/constants/IOpenAdContants$AdSlotType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openad/constants/IOpenAdContants$AdSlotType;

    return-object v0
.end method

.method public static values()[Lorg/openad/constants/IOpenAdContants$AdSlotType;
    .locals 1

    sget-object v0, Lorg/openad/constants/IOpenAdContants$AdSlotType;->$VALUES:[Lorg/openad/constants/IOpenAdContants$AdSlotType;

    invoke-virtual {v0}, [Lorg/openad/constants/IOpenAdContants$AdSlotType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openad/constants/IOpenAdContants$AdSlotType;

    return-object v0
.end method


# virtual methods
.method public getIntCode()I
    .locals 1

    iget v0, p0, Lorg/openad/constants/IOpenAdContants$AdSlotType;->code:I

    return v0
.end method

.method public getStringCode()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/openad/constants/IOpenAdContants$AdSlotType;->getIntCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openad/constants/IOpenAdContants$AdSlotType;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isLinear()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lorg/openad/constants/IOpenAdContants$AdSlotType;->PREROLL:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lorg/openad/constants/IOpenAdContants$AdSlotType;->MIDROLL:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lorg/openad/constants/IOpenAdContants$AdSlotType;->POSTROLL:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNonLinear()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lorg/openad/constants/IOpenAdContants$AdSlotType;->DISPLAY:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    if-eq p0, v0, :cond_0

    sget-object v0, Lorg/openad/constants/IOpenAdContants$AdSlotType;->PAUSEROLL:Lorg/openad/constants/IOpenAdContants$AdSlotType;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
