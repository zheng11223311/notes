.class public final enum Lcom/tudou/detail/vo/SliderInfo$SliderType;
.super Ljava/lang/Enum;
.source "SliderInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/vo/SliderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SliderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tudou/detail/vo/SliderInfo$SliderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tudou/detail/vo/SliderInfo$SliderType;

.field public static final enum COMMENT:Lcom/tudou/detail/vo/SliderInfo$SliderType;

.field public static final enum DIG:Lcom/tudou/detail/vo/SliderInfo$SliderType;

.field public static final enum FEATURE:Lcom/tudou/detail/vo/SliderInfo$SliderType;

.field public static final enum GIFT:Lcom/tudou/detail/vo/SliderInfo$SliderType;

.field public static final enum PODCAST_USER:Lcom/tudou/detail/vo/SliderInfo$SliderType;

.field public static final enum POINT:Lcom/tudou/detail/vo/SliderInfo$SliderType;

.field public static final enum SKIP:Lcom/tudou/detail/vo/SliderInfo$SliderType;

.field public static final enum SUMMARY:Lcom/tudou/detail/vo/SliderInfo$SliderType;

.field public static final enum VOTE:Lcom/tudou/detail/vo/SliderInfo$SliderType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/tudou/detail/vo/SliderInfo$SliderType;

    const-string v1, "SUMMARY"

    invoke-direct {v0, v1, v3}, Lcom/tudou/detail/vo/SliderInfo$SliderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tudou/detail/vo/SliderInfo$SliderType;->SUMMARY:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    new-instance v0, Lcom/tudou/detail/vo/SliderInfo$SliderType;

    const-string v1, "DIG"

    invoke-direct {v0, v1, v4}, Lcom/tudou/detail/vo/SliderInfo$SliderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tudou/detail/vo/SliderInfo$SliderType;->DIG:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    new-instance v0, Lcom/tudou/detail/vo/SliderInfo$SliderType;

    const-string v1, "FEATURE"

    invoke-direct {v0, v1, v5}, Lcom/tudou/detail/vo/SliderInfo$SliderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tudou/detail/vo/SliderInfo$SliderType;->FEATURE:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    new-instance v0, Lcom/tudou/detail/vo/SliderInfo$SliderType;

    const-string v1, "POINT"

    invoke-direct {v0, v1, v6}, Lcom/tudou/detail/vo/SliderInfo$SliderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tudou/detail/vo/SliderInfo$SliderType;->POINT:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    new-instance v0, Lcom/tudou/detail/vo/SliderInfo$SliderType;

    const-string v1, "PODCAST_USER"

    invoke-direct {v0, v1, v7}, Lcom/tudou/detail/vo/SliderInfo$SliderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tudou/detail/vo/SliderInfo$SliderType;->PODCAST_USER:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    new-instance v0, Lcom/tudou/detail/vo/SliderInfo$SliderType;

    const-string v1, "COMMENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/tudou/detail/vo/SliderInfo$SliderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tudou/detail/vo/SliderInfo$SliderType;->COMMENT:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    new-instance v0, Lcom/tudou/detail/vo/SliderInfo$SliderType;

    const-string v1, "SKIP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/tudou/detail/vo/SliderInfo$SliderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tudou/detail/vo/SliderInfo$SliderType;->SKIP:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    new-instance v0, Lcom/tudou/detail/vo/SliderInfo$SliderType;

    const-string v1, "GIFT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/tudou/detail/vo/SliderInfo$SliderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tudou/detail/vo/SliderInfo$SliderType;->GIFT:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    new-instance v0, Lcom/tudou/detail/vo/SliderInfo$SliderType;

    const-string v1, "VOTE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/tudou/detail/vo/SliderInfo$SliderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tudou/detail/vo/SliderInfo$SliderType;->VOTE:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    .line 18
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/tudou/detail/vo/SliderInfo$SliderType;

    sget-object v1, Lcom/tudou/detail/vo/SliderInfo$SliderType;->SUMMARY:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tudou/detail/vo/SliderInfo$SliderType;->DIG:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tudou/detail/vo/SliderInfo$SliderType;->FEATURE:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tudou/detail/vo/SliderInfo$SliderType;->POINT:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/tudou/detail/vo/SliderInfo$SliderType;->PODCAST_USER:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/tudou/detail/vo/SliderInfo$SliderType;->COMMENT:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/tudou/detail/vo/SliderInfo$SliderType;->SKIP:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/tudou/detail/vo/SliderInfo$SliderType;->GIFT:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/tudou/detail/vo/SliderInfo$SliderType;->VOTE:Lcom/tudou/detail/vo/SliderInfo$SliderType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tudou/detail/vo/SliderInfo$SliderType;->$VALUES:[Lcom/tudou/detail/vo/SliderInfo$SliderType;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tudou/detail/vo/SliderInfo$SliderType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/tudou/detail/vo/SliderInfo$SliderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tudou/detail/vo/SliderInfo$SliderType;

    return-object v0
.end method

.method public static values()[Lcom/tudou/detail/vo/SliderInfo$SliderType;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/tudou/detail/vo/SliderInfo$SliderType;->$VALUES:[Lcom/tudou/detail/vo/SliderInfo$SliderType;

    invoke-virtual {v0}, [Lcom/tudou/detail/vo/SliderInfo$SliderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tudou/detail/vo/SliderInfo$SliderType;

    return-object v0
.end method
