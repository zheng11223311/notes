.class Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$StarListItemInfo;
.super Ljava/lang/Object;
.source "GiftLogicFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StarListItemInfo"
.end annotation


# instance fields
.field isSelf:Z

.field final synthetic this$0:Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;Z)V
    .locals 1
    .param p1, "this$0"    # Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;
    .param p2, "isSelf"    # Z

    .prologue
    .line 34
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$StarListItemInfo;->this$0:Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$StarListItemInfo;->isSelf:Z

    .line 35
    iput-boolean p2, p0, Lcom/youku/laifeng/sdk/widget/jbox2dShow/GiftLogicFactory$StarListItemInfo;->isSelf:Z

    .line 36
    return-void
.end method
