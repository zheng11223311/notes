.class Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$9;
.super Ljava/lang/Object;
.source "ClassifySelectedResultsForVIPFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->initMyVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;


# direct methods
.method constructor <init>(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$9;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x2

    .line 561
    iget-object v0, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$9;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v0}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$700(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$9;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v1}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$1500(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/youku/vo/MyVideoResult;

    move-result-object v1

    iget-object v1, v1, Lcom/youku/vo/MyVideoResult;->albums:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vo/MyVideoResult$Result;

    iget v1, v1, Lcom/youku/vo/MyVideoResult$Result;->albumid:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tudou/android/Youku$Type;->SHOWID:Lcom/tudou/android/Youku$Type;

    iget-object v3, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$9;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v3}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$1500(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/youku/vo/MyVideoResult;

    move-result-object v3

    iget-object v3, v3, Lcom/youku/vo/MyVideoResult;->albums:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/vo/MyVideoResult$Result;

    iget-object v3, v3, Lcom/youku/vo/MyVideoResult$Result;->albumName:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment$9;->this$0:Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;

    invoke-static {v5}, Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;->access$1500(Lcom/tudou/ui/fragment/ClassifySelectedResultsForVIPFragment;)Lcom/youku/vo/MyVideoResult;

    move-result-object v5

    iget-object v5, v5, Lcom/youku/vo/MyVideoResult;->albums:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/MyVideoResult$Result;

    iget-object v5, v5, Lcom/youku/vo/MyVideoResult$Result;->albumName:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcom/tudou/android/TudouApi;->goDetailById(Landroid/content/Context;Ljava/lang/String;Lcom/tudou/android/Youku$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 563
    return-void
.end method
