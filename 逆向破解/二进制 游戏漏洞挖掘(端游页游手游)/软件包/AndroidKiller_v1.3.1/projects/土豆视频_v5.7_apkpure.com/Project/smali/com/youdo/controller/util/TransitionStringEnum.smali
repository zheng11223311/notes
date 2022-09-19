.class public final enum Lcom/youdo/controller/util/TransitionStringEnum;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/youdo/controller/util/TransitionStringEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/youdo/controller/util/TransitionStringEnum;

.field public static final enum DEFAULT:Lcom/youdo/controller/util/TransitionStringEnum;

.field public static final enum DISSOLVE:Lcom/youdo/controller/util/TransitionStringEnum;

.field public static final enum FADE:Lcom/youdo/controller/util/TransitionStringEnum;

.field public static final enum NONE:Lcom/youdo/controller/util/TransitionStringEnum;

.field public static final enum ROLL:Lcom/youdo/controller/util/TransitionStringEnum;

.field public static final enum SLIDE:Lcom/youdo/controller/util/TransitionStringEnum;

.field public static final enum ZOOM:Lcom/youdo/controller/util/TransitionStringEnum;


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/youdo/controller/util/TransitionStringEnum;

    const-string v1, "DEFAULT"

    const-string v2, "default"

    invoke-direct {v0, v1, v4, v2}, Lcom/youdo/controller/util/TransitionStringEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/youdo/controller/util/TransitionStringEnum;->DEFAULT:Lcom/youdo/controller/util/TransitionStringEnum;

    new-instance v0, Lcom/youdo/controller/util/TransitionStringEnum;

    const-string v1, "DISSOLVE"

    const-string v2, "dissolve"

    invoke-direct {v0, v1, v5, v2}, Lcom/youdo/controller/util/TransitionStringEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/youdo/controller/util/TransitionStringEnum;->DISSOLVE:Lcom/youdo/controller/util/TransitionStringEnum;

    new-instance v0, Lcom/youdo/controller/util/TransitionStringEnum;

    const-string v1, "FADE"

    const-string v2, "fade"

    invoke-direct {v0, v1, v6, v2}, Lcom/youdo/controller/util/TransitionStringEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/youdo/controller/util/TransitionStringEnum;->FADE:Lcom/youdo/controller/util/TransitionStringEnum;

    new-instance v0, Lcom/youdo/controller/util/TransitionStringEnum;

    const-string v1, "ROLL"

    const-string/jumbo v2, "roll"

    invoke-direct {v0, v1, v7, v2}, Lcom/youdo/controller/util/TransitionStringEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/youdo/controller/util/TransitionStringEnum;->ROLL:Lcom/youdo/controller/util/TransitionStringEnum;

    new-instance v0, Lcom/youdo/controller/util/TransitionStringEnum;

    const-string v1, "SLIDE"

    const-string/jumbo v2, "slide"

    invoke-direct {v0, v1, v8, v2}, Lcom/youdo/controller/util/TransitionStringEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/youdo/controller/util/TransitionStringEnum;->SLIDE:Lcom/youdo/controller/util/TransitionStringEnum;

    new-instance v0, Lcom/youdo/controller/util/TransitionStringEnum;

    const-string v1, "ZOOM"

    const/4 v2, 0x5

    const-string/jumbo v3, "zoom"

    invoke-direct {v0, v1, v2, v3}, Lcom/youdo/controller/util/TransitionStringEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/youdo/controller/util/TransitionStringEnum;->ZOOM:Lcom/youdo/controller/util/TransitionStringEnum;

    new-instance v0, Lcom/youdo/controller/util/TransitionStringEnum;

    const-string v1, "NONE"

    const/4 v2, 0x6

    const-string v3, "none"

    invoke-direct {v0, v1, v2, v3}, Lcom/youdo/controller/util/TransitionStringEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/youdo/controller/util/TransitionStringEnum;->NONE:Lcom/youdo/controller/util/TransitionStringEnum;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/youdo/controller/util/TransitionStringEnum;

    sget-object v1, Lcom/youdo/controller/util/TransitionStringEnum;->DEFAULT:Lcom/youdo/controller/util/TransitionStringEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/youdo/controller/util/TransitionStringEnum;->DISSOLVE:Lcom/youdo/controller/util/TransitionStringEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/youdo/controller/util/TransitionStringEnum;->FADE:Lcom/youdo/controller/util/TransitionStringEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/youdo/controller/util/TransitionStringEnum;->ROLL:Lcom/youdo/controller/util/TransitionStringEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/youdo/controller/util/TransitionStringEnum;->SLIDE:Lcom/youdo/controller/util/TransitionStringEnum;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/youdo/controller/util/TransitionStringEnum;->ZOOM:Lcom/youdo/controller/util/TransitionStringEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/youdo/controller/util/TransitionStringEnum;->NONE:Lcom/youdo/controller/util/TransitionStringEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/youdo/controller/util/TransitionStringEnum;->$VALUES:[Lcom/youdo/controller/util/TransitionStringEnum;

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

    iput-object p3, p0, Lcom/youdo/controller/util/TransitionStringEnum;->text:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/youdo/controller/util/TransitionStringEnum;
    .locals 5

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/youdo/controller/util/TransitionStringEnum;->values()[Lcom/youdo/controller/util/TransitionStringEnum;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget-object v4, v0, Lcom/youdo/controller/util/TransitionStringEnum;->text:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

.method public static valueOf(Ljava/lang/String;)Lcom/youdo/controller/util/TransitionStringEnum;
    .locals 1

    const-class v0, Lcom/youdo/controller/util/TransitionStringEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/youdo/controller/util/TransitionStringEnum;

    return-object v0
.end method

.method public static values()[Lcom/youdo/controller/util/TransitionStringEnum;
    .locals 1

    sget-object v0, Lcom/youdo/controller/util/TransitionStringEnum;->$VALUES:[Lcom/youdo/controller/util/TransitionStringEnum;

    invoke-virtual {v0}, [Lcom/youdo/controller/util/TransitionStringEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/youdo/controller/util/TransitionStringEnum;

    return-object v0
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/youdo/controller/util/TransitionStringEnum;->text:Ljava/lang/String;

    return-object v0
.end method
