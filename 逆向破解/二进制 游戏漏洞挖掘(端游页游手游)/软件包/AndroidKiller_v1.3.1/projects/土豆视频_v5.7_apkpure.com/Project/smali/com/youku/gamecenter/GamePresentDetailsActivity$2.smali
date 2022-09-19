.class Lcom/youku/gamecenter/GamePresentDetailsActivity$2;
.super Ljava/lang/Object;
.source "GamePresentDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/GamePresentDetailsActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GamePresentDetailsActivity;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/GamePresentDetailsActivity;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity$2;->this$0:Lcom/youku/gamecenter/GamePresentDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity$2;->this$0:Lcom/youku/gamecenter/GamePresentDetailsActivity;

    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentDetailsActivity$2;->this$0:Lcom/youku/gamecenter/GamePresentDetailsActivity;

    invoke-static {v1}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->access$300(Lcom/youku/gamecenter/GamePresentDetailsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/gamecenter/GamePresentDetailsActivity;->access$400(Lcom/youku/gamecenter/GamePresentDetailsActivity;Ljava/lang/String;)V

    .line 128
    return-void
.end method
