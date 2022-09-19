.class Lcom/youku/gamecenter/GamePresentListActivity$1;
.super Ljava/lang/Object;
.source "GamePresentListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/GamePresentListActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GamePresentListActivity;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/GamePresentListActivity;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/youku/gamecenter/GamePresentListActivity$1;->this$0:Lcom/youku/gamecenter/GamePresentListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity$1;->this$0:Lcom/youku/gamecenter/GamePresentListActivity;

    iget-object v1, p0, Lcom/youku/gamecenter/GamePresentListActivity$1;->this$0:Lcom/youku/gamecenter/GamePresentListActivity;

    invoke-static {v1}, Lcom/youku/gamecenter/GamePresentListActivity;->access$000(Lcom/youku/gamecenter/GamePresentListActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/youku/gamecenter/GamePresentListActivity$1;->this$0:Lcom/youku/gamecenter/GamePresentListActivity;

    invoke-static {v2}, Lcom/youku/gamecenter/GamePresentListActivity;->access$100(Lcom/youku/gamecenter/GamePresentListActivity;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/youku/gamecenter/services/URLContainer;->getPresentListByAppIdUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/gamecenter/GamePresentListActivity;->setUrl(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/youku/gamecenter/GamePresentListActivity$1;->this$0:Lcom/youku/gamecenter/GamePresentListActivity;

    invoke-static {v0}, Lcom/youku/gamecenter/GamePresentListActivity;->access$200(Lcom/youku/gamecenter/GamePresentListActivity;)V

    .line 313
    return-void
.end method
