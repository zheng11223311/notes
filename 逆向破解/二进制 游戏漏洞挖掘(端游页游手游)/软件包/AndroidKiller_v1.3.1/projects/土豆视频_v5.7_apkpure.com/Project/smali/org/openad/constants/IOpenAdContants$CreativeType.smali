.class public final enum Lorg/openad/constants/IOpenAdContants$CreativeType;
.super Ljava/lang/Enum;

# interfaces
.implements Lorg/openad/constants/IOpenAdEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openad/constants/IOpenAdContants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CreativeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/openad/constants/IOpenAdContants$CreativeType;",
        ">;",
        "Lorg/openad/constants/IOpenAdEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openad/constants/IOpenAdContants$CreativeType;

.field public static final enum IMG:Lorg/openad/constants/IOpenAdContants$CreativeType;

.field public static final enum THE_3RD_PARTY:Lorg/openad/constants/IOpenAdContants$CreativeType;

.field public static final enum UNKNOWN:Lorg/openad/constants/IOpenAdContants$CreativeType;

.field public static final enum VIDEO:Lorg/openad/constants/IOpenAdContants$CreativeType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/openad/constants/IOpenAdContants$CreativeType;

    const-string v1, "UNKNOWN"

    const-string/jumbo v2, "unknown"

    invoke-direct {v0, v1, v3, v2}, Lorg/openad/constants/IOpenAdContants$CreativeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$CreativeType;->UNKNOWN:Lorg/openad/constants/IOpenAdContants$CreativeType;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$CreativeType;

    const-string v1, "VIDEO"

    const-string/jumbo v2, "video"

    invoke-direct {v0, v1, v4, v2}, Lorg/openad/constants/IOpenAdContants$CreativeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$CreativeType;->VIDEO:Lorg/openad/constants/IOpenAdContants$CreativeType;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$CreativeType;

    const-string v1, "IMG"

    const-string v2, "img"

    invoke-direct {v0, v1, v5, v2}, Lorg/openad/constants/IOpenAdContants$CreativeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$CreativeType;->IMG:Lorg/openad/constants/IOpenAdContants$CreativeType;

    new-instance v0, Lorg/openad/constants/IOpenAdContants$CreativeType;

    const-string v1, "THE_3RD_PARTY"

    const-string/jumbo v2, "swf"

    invoke-direct {v0, v1, v6, v2}, Lorg/openad/constants/IOpenAdContants$CreativeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/openad/constants/IOpenAdContants$CreativeType;->THE_3RD_PARTY:Lorg/openad/constants/IOpenAdContants$CreativeType;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/openad/constants/IOpenAdContants$CreativeType;

    sget-object v1, Lorg/openad/constants/IOpenAdContants$CreativeType;->UNKNOWN:Lorg/openad/constants/IOpenAdContants$CreativeType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/openad/constants/IOpenAdContants$CreativeType;->VIDEO:Lorg/openad/constants/IOpenAdContants$CreativeType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/openad/constants/IOpenAdContants$CreativeType;->IMG:Lorg/openad/constants/IOpenAdContants$CreativeType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/openad/constants/IOpenAdContants$CreativeType;->THE_3RD_PARTY:Lorg/openad/constants/IOpenAdContants$CreativeType;

    aput-object v1, v0, v6

    sput-object v0, Lorg/openad/constants/IOpenAdContants$CreativeType;->$VALUES:[Lorg/openad/constants/IOpenAdContants$CreativeType;

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

    iput-object p3, p0, Lorg/openad/constants/IOpenAdContants$CreativeType;->value:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lorg/openad/constants/IOpenAdContants$CreativeType;
    .locals 5

    invoke-static {}, Lorg/openad/constants/IOpenAdContants$CreativeType;->values()[Lorg/openad/constants/IOpenAdContants$CreativeType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget-object v4, v0, Lorg/openad/constants/IOpenAdContants$CreativeType;->value:Ljava/lang/String;

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

.method public static valueOf(Ljava/lang/String;)Lorg/openad/constants/IOpenAdContants$CreativeType;
    .locals 1

    const-class v0, Lorg/openad/constants/IOpenAdContants$CreativeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/openad/constants/IOpenAdContants$CreativeType;

    return-object v0
.end method

.method public static values()[Lorg/openad/constants/IOpenAdContants$CreativeType;
    .locals 1

    sget-object v0, Lorg/openad/constants/IOpenAdContants$CreativeType;->$VALUES:[Lorg/openad/constants/IOpenAdContants$CreativeType;

    invoke-virtual {v0}, [Lorg/openad/constants/IOpenAdContants$CreativeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openad/constants/IOpenAdContants$CreativeType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openad/constants/IOpenAdContants$CreativeType;->value:Ljava/lang/String;

    return-object v0
.end method
