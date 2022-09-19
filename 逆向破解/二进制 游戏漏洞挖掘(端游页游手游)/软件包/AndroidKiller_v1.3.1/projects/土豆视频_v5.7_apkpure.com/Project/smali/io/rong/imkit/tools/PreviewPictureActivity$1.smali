.class Lio/rong/imkit/tools/PreviewPictureActivity$1;
.super Ljava/lang/Object;
.source "PreviewPictureActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/tools/PreviewPictureActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/rong/imkit/tools/PreviewPictureActivity;


# direct methods
.method constructor <init>(Lio/rong/imkit/tools/PreviewPictureActivity;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lio/rong/imkit/tools/PreviewPictureActivity$1;->this$0:Lio/rong/imkit/tools/PreviewPictureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 9
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 96
    if-eqz p2, :cond_1

    .line 97
    iget-object v5, p0, Lio/rong/imkit/tools/PreviewPictureActivity$1;->this$0:Lio/rong/imkit/tools/PreviewPictureActivity;

    invoke-static {v5}, Lio/rong/imkit/tools/PreviewPictureActivity;->access$100(Lio/rong/imkit/tools/PreviewPictureActivity;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lio/rong/imkit/tools/PreviewPictureActivity$1;->this$0:Lio/rong/imkit/tools/PreviewPictureActivity;

    invoke-static {v6}, Lio/rong/imkit/tools/PreviewPictureActivity;->access$000(Lio/rong/imkit/tools/PreviewPictureActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imkit/tools/PreviewPictureActivity$SaveSelectState;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/rong/imkit/tools/PreviewPictureActivity$SaveSelectState;->setIsSelect(Ljava/lang/Boolean;)V

    .line 101
    :goto_0
    const/4 v3, 0x0

    .line 102
    .local v3, "selected":I
    iget-object v5, p0, Lio/rong/imkit/tools/PreviewPictureActivity$1;->this$0:Lio/rong/imkit/tools/PreviewPictureActivity;

    invoke-static {v5}, Lio/rong/imkit/tools/PreviewPictureActivity;->access$100(Lio/rong/imkit/tools/PreviewPictureActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/rong/imkit/tools/PreviewPictureActivity$SaveSelectState;

    .line 103
    .local v4, "state":Lio/rong/imkit/tools/PreviewPictureActivity$SaveSelectState;
    invoke-static {v4}, Lio/rong/imkit/tools/PreviewPictureActivity$SaveSelectState;->access$200(Lio/rong/imkit/tools/PreviewPictureActivity$SaveSelectState;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 104
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 99
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "selected":I
    .end local v4    # "state":Lio/rong/imkit/tools/PreviewPictureActivity$SaveSelectState;
    :cond_1
    iget-object v5, p0, Lio/rong/imkit/tools/PreviewPictureActivity$1;->this$0:Lio/rong/imkit/tools/PreviewPictureActivity;

    invoke-static {v5}, Lio/rong/imkit/tools/PreviewPictureActivity;->access$100(Lio/rong/imkit/tools/PreviewPictureActivity;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lio/rong/imkit/tools/PreviewPictureActivity$1;->this$0:Lio/rong/imkit/tools/PreviewPictureActivity;

    invoke-static {v6}, Lio/rong/imkit/tools/PreviewPictureActivity;->access$000(Lio/rong/imkit/tools/PreviewPictureActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/rong/imkit/tools/PreviewPictureActivity$SaveSelectState;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/rong/imkit/tools/PreviewPictureActivity$SaveSelectState;->setIsSelect(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 106
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "selected":I
    :cond_2
    iget-object v5, p0, Lio/rong/imkit/tools/PreviewPictureActivity$1;->this$0:Lio/rong/imkit/tools/PreviewPictureActivity;

    invoke-virtual {v5}, Lio/rong/imkit/tools/PreviewPictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lio/rong/imkit/R$string;->rc_send_format:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "formatString":Ljava/lang/String;
    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "content":Ljava/lang/String;
    iget-object v5, p0, Lio/rong/imkit/tools/PreviewPictureActivity$1;->this$0:Lio/rong/imkit/tools/PreviewPictureActivity;

    invoke-static {v5}, Lio/rong/imkit/tools/PreviewPictureActivity;->access$300(Lio/rong/imkit/tools/PreviewPictureActivity;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 110
    if-ge v3, v7, :cond_3

    .line 111
    iget-object v5, p0, Lio/rong/imkit/tools/PreviewPictureActivity$1;->this$0:Lio/rong/imkit/tools/PreviewPictureActivity;

    invoke-static {v5}, Lio/rong/imkit/tools/PreviewPictureActivity;->access$300(Lio/rong/imkit/tools/PreviewPictureActivity;)Landroid/widget/Button;

    move-result-object v5

    const v6, -0x777778

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 112
    iget-object v5, p0, Lio/rong/imkit/tools/PreviewPictureActivity$1;->this$0:Lio/rong/imkit/tools/PreviewPictureActivity;

    invoke-static {v5}, Lio/rong/imkit/tools/PreviewPictureActivity;->access$300(Lio/rong/imkit/tools/PreviewPictureActivity;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setClickable(Z)V

    .line 117
    :goto_2
    return-void

    .line 114
    :cond_3
    iget-object v5, p0, Lio/rong/imkit/tools/PreviewPictureActivity$1;->this$0:Lio/rong/imkit/tools/PreviewPictureActivity;

    invoke-static {v5}, Lio/rong/imkit/tools/PreviewPictureActivity;->access$300(Lio/rong/imkit/tools/PreviewPictureActivity;)Landroid/widget/Button;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 115
    iget-object v5, p0, Lio/rong/imkit/tools/PreviewPictureActivity$1;->this$0:Lio/rong/imkit/tools/PreviewPictureActivity;

    invoke-static {v5}, Lio/rong/imkit/tools/PreviewPictureActivity;->access$300(Lio/rong/imkit/tools/PreviewPictureActivity;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_2
.end method
