.class Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$8;
.super Ljava/lang/Object;
.source "SuperCardToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;

    .prologue
    .line 1575
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$8;->this$0:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$8;->this$0:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;

    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->access$400(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V

    .line 1582
    return-void
.end method
