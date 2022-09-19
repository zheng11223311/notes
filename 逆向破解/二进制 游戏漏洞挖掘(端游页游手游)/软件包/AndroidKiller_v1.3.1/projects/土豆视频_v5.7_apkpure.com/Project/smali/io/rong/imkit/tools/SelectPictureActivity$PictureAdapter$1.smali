.class Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter$1;
.super Ljava/lang/Object;
.source "SelectPictureActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;I)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter$1;->this$1:Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;

    iput p2, p0, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 160
    if-eqz p2, :cond_1

    .line 161
    iget-object v2, p0, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter$1;->this$1:Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;

    iget-object v2, v2, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;->state:Ljava/util/HashMap;

    iget v3, p0, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter$1;->val$position:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter$1;->this$1:Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;

    iget-object v4, v4, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;->this$0:Lio/rong/imkit/tools/SelectPictureActivity;

    invoke-static {v4}, Lio/rong/imkit/tools/SelectPictureActivity;->access$000(Lio/rong/imkit/tools/SelectPictureActivity;)Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter$1;->val$position:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v2, p0, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter$1;->this$1:Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;

    iget-object v2, v2, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;->this$0:Lio/rong/imkit/tools/SelectPictureActivity;

    invoke-static {v2}, Lio/rong/imkit/tools/SelectPictureActivity;->access$100(Lio/rong/imkit/tools/SelectPictureActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter$1;->this$1:Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;

    iget-object v3, v3, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;->this$0:Lio/rong/imkit/tools/SelectPictureActivity;

    invoke-static {v3}, Lio/rong/imkit/tools/SelectPictureActivity;->access$000(Lio/rong/imkit/tools/SelectPictureActivity;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter$1;->val$position:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 163
    iget-object v2, p0, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter$1;->this$1:Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;

    iget-object v2, v2, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;->this$0:Lio/rong/imkit/tools/SelectPictureActivity;

    invoke-static {v2}, Lio/rong/imkit/tools/SelectPictureActivity;->access$100(Lio/rong/imkit/tools/SelectPictureActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter$1;->this$1:Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;

    iget-object v3, v3, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;->this$0:Lio/rong/imkit/tools/SelectPictureActivity;

    invoke-static {v3}, Lio/rong/imkit/tools/SelectPictureActivity;->access$000(Lio/rong/imkit/tools/SelectPictureActivity;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter$1;->val$position:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_0
    :goto_0
    iget-object v2, p0, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter$1;->this$1:Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;

    iget-object v2, v2, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;->this$0:Lio/rong/imkit/tools/SelectPictureActivity;

    invoke-virtual {v2}, Lio/rong/imkit/tools/SelectPictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lio/rong/imkit/R$string;->rc_send_format:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "formatString":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter$1;->this$1:Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;

    iget-object v4, v4, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;->this$0:Lio/rong/imkit/tools/SelectPictureActivity;

    invoke-static {v4}, Lio/rong/imkit/tools/SelectPictureActivity;->access$100(Lio/rong/imkit/tools/SelectPictureActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "content":Ljava/lang/String;
    iget-object v2, p0, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter$1;->this$1:Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;

    iget-object v2, v2, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;->this$0:Lio/rong/imkit/tools/SelectPictureActivity;

    invoke-static {v2}, Lio/rong/imkit/tools/SelectPictureActivity;->access$200(Lio/rong/imkit/tools/SelectPictureActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 173
    return-void

    .line 166
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "formatString":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter$1;->this$1:Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;

    iget-object v2, v2, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;->state:Ljava/util/HashMap;

    iget v3, p0, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter$1;->val$position:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v2, p0, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter$1;->this$1:Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;

    iget-object v2, v2, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;->this$0:Lio/rong/imkit/tools/SelectPictureActivity;

    invoke-static {v2}, Lio/rong/imkit/tools/SelectPictureActivity;->access$100(Lio/rong/imkit/tools/SelectPictureActivity;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter$1;->this$1:Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;

    iget-object v3, v3, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;->this$0:Lio/rong/imkit/tools/SelectPictureActivity;

    invoke-static {v3}, Lio/rong/imkit/tools/SelectPictureActivity;->access$000(Lio/rong/imkit/tools/SelectPictureActivity;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter$1;->val$position:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
