.class Lcom/youku/gamecenter/fragment/GameRequestFragment$1;
.super Ljava/lang/Object;
.source "GameRequestFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/fragment/GameRequestFragment;->fetchResponseDelay(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/fragment/GameRequestFragment;

.field final synthetic val$page:I


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/fragment/GameRequestFragment;I)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/youku/gamecenter/fragment/GameRequestFragment$1;->this$0:Lcom/youku/gamecenter/fragment/GameRequestFragment;

    iput p2, p0, Lcom/youku/gamecenter/fragment/GameRequestFragment$1;->val$page:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/youku/gamecenter/fragment/GameRequestFragment$1;->this$0:Lcom/youku/gamecenter/fragment/GameRequestFragment;

    iget v1, p0, Lcom/youku/gamecenter/fragment/GameRequestFragment$1;->val$page:I

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/fragment/GameRequestFragment;->doRequest(I)V

    .line 133
    return-void
.end method
