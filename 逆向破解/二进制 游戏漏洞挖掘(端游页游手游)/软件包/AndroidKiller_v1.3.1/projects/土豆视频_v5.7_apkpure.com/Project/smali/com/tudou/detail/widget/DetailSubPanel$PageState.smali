.class public final enum Lcom/tudou/detail/widget/DetailSubPanel$PageState;
.super Ljava/lang/Enum;
.source "DetailSubPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/widget/DetailSubPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PageState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tudou/detail/widget/DetailSubPanel$PageState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tudou/detail/widget/DetailSubPanel$PageState;

.field public static final enum ACTOR:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

.field public static final enum BRIEF:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

.field public static final enum CACHE:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

.field public static final enum CHAT:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

.field public static final enum COMMENT:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

.field public static final enum FEATURE:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

.field public static final enum GIFT:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

.field public static final enum POINT:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

.field public static final enum SELECTNESS:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

.field public static final enum VOTE:Lcom/tudou/detail/widget/DetailSubPanel$PageState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    new-instance v0, Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    const-string v1, "BRIEF"

    invoke-direct {v0, v1, v3}, Lcom/tudou/detail/widget/DetailSubPanel$PageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->BRIEF:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    new-instance v0, Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    const-string v1, "COMMENT"

    invoke-direct {v0, v1, v4}, Lcom/tudou/detail/widget/DetailSubPanel$PageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->COMMENT:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    new-instance v0, Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    const-string v1, "POINT"

    invoke-direct {v0, v1, v5}, Lcom/tudou/detail/widget/DetailSubPanel$PageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->POINT:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    new-instance v0, Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    const-string v1, "FEATURE"

    invoke-direct {v0, v1, v6}, Lcom/tudou/detail/widget/DetailSubPanel$PageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->FEATURE:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    new-instance v0, Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    const-string v1, "CACHE"

    invoke-direct {v0, v1, v7}, Lcom/tudou/detail/widget/DetailSubPanel$PageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->CACHE:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    new-instance v0, Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    const-string v1, "GIFT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/tudou/detail/widget/DetailSubPanel$PageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->GIFT:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    new-instance v0, Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    const-string v1, "ACTOR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/tudou/detail/widget/DetailSubPanel$PageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->ACTOR:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    new-instance v0, Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    const-string v1, "SELECTNESS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/tudou/detail/widget/DetailSubPanel$PageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->SELECTNESS:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    new-instance v0, Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    const-string v1, "VOTE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/tudou/detail/widget/DetailSubPanel$PageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->VOTE:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    new-instance v0, Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    const-string v1, "CHAT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/tudou/detail/widget/DetailSubPanel$PageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->CHAT:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    .line 57
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    sget-object v1, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->BRIEF:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->COMMENT:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->POINT:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->FEATURE:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->CACHE:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->GIFT:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->ACTOR:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->SELECTNESS:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->VOTE:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->CHAT:Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->$VALUES:[Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tudou/detail/widget/DetailSubPanel$PageState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 57
    const-class v0, Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    return-object v0
.end method

.method public static values()[Lcom/tudou/detail/widget/DetailSubPanel$PageState;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/tudou/detail/widget/DetailSubPanel$PageState;->$VALUES:[Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    invoke-virtual {v0}, [Lcom/tudou/detail/widget/DetailSubPanel$PageState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tudou/detail/widget/DetailSubPanel$PageState;

    return-object v0
.end method
