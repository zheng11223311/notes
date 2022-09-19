.class Lcom/youku/gamecenter/GameSearchResultActivity$4;
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
    .line 138
    iput-object p1, p0, Lcom/youku/gamecenter/GameSearchResultActivity$4;->this$0:Lcom/youku/gamecenter/GameSearchResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 142
    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchResultActivity$4;->this$0:Lcom/youku/gamecenter/GameSearchResultActivity;

    iget-object v2, v2, Lcom/youku/gamecenter/GameSearchResultActivity;->et_search_game:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "searchword":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 144
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 145
    .local v0, "searchData":Landroid/content/Intent;
    const-string/jumbo v2, "searchword"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchResultActivity$4;->this$0:Lcom/youku/gamecenter/GameSearchResultActivity;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v0}, Lcom/youku/gamecenter/GameSearchResultActivity;->setResult(ILandroid/content/Intent;)V

    .line 148
    .end local v0    # "searchData":Landroid/content/Intent;
    :cond_0
    iget-object v2, p0, Lcom/youku/gamecenter/GameSearchResultActivity$4;->this$0:Lcom/youku/gamecenter/GameSearchResultActivity;

    invoke-virtual {v2}, Lcom/youku/gamecenter/GameSearchResultActivity;->onBackPressed()V

    .line 149
    return-void
.end method
