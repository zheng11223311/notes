.class final enum Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;
.super Ljava/lang/Enum;
.source "ChannelSquareFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/ui/fragment/ChannelSquareFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "NoContentTips"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;

.field public static final enum FAILED_CLASSFIES:Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;

.field public static final enum GONE:Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    new-instance v0, Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;

    const-string v1, "GONE"

    invoke-direct {v0, v1, v2}, Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;->GONE:Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;

    new-instance v0, Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;

    const-string v1, "FAILED_CLASSFIES"

    invoke-direct {v0, v1, v3}, Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;->FAILED_CLASSFIES:Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;

    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;

    sget-object v1, Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;->GONE:Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;->FAILED_CLASSFIES:Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;->$VALUES:[Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;

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
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 78
    const-class v0, Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;

    return-object v0
.end method

.method public static values()[Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;->$VALUES:[Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;

    invoke-virtual {v0}, [Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tudou/ui/fragment/ChannelSquareFragment$NoContentTips;

    return-object v0
.end method
