.class Lcom/youku/gamecenter/GameSearchResultActivity$3;
.super Ljava/lang/Object;
.source "GameSearchResultActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/gamecenter/GameSearchResultActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/gamecenter/GameSearchResultActivity;


# direct methods
.method constructor <init>(Lcom/youku/gamecenter/GameSearchResultActivity;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/youku/gamecenter/GameSearchResultActivity$3;->this$0:Lcom/youku/gamecenter/GameSearchResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/youku/gamecenter/GameSearchResultActivity$3;->this$0:Lcom/youku/gamecenter/GameSearchResultActivity;

    iget-object v1, p0, Lcom/youku/gamecenter/GameSearchResultActivity$3;->this$0:Lcom/youku/gamecenter/GameSearchResultActivity;

    invoke-static {v1}, Lcom/youku/gamecenter/GameSearchResultActivity;->access$000(Lcom/youku/gamecenter/GameSearchResultActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/gamecenter/GameSearchResultActivity;->access$400(Lcom/youku/gamecenter/GameSearchResultActivity;Landroid/widget/LinearLayout;)V

    .line 136
    return-void
.end method
