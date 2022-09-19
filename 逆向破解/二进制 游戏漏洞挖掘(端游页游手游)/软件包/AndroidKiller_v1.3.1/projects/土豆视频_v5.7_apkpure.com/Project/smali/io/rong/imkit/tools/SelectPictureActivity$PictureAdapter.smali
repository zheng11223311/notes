.class Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectPictureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/tools/SelectPictureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PictureAdapter"
.end annotation


# instance fields
.field state:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/rong/imkit/tools/SelectPictureActivity;


# direct methods
.method constructor <init>(Lio/rong/imkit/tools/SelectPictureActivity;)V
    .locals 1

    .prologue
    .line 123
    iput-object p1, p0, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;->this$0:Lio/rong/imkit/tools/SelectPictureActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;->state:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;->this$0:Lio/rong/imkit/tools/SelectPictureActivity;

    invoke-static {v0}, Lio/rong/imkit/tools/SelectPictureActivity;->access$000(Lio/rong/imkit/tools/SelectPictureActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;->this$0:Lio/rong/imkit/tools/SelectPictureActivity;

    invoke-static {v0}, Lio/rong/imkit/tools/SelectPictureActivity;->access$000(Lio/rong/imkit/tools/SelectPictureActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 138
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 144
    const/4 v1, 0x0

    .line 145
    .local v1, "holder":Lio/rong/imkit/tools/SelectPictureActivity$ViewHolder;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    .line 146
    :cond_0
    iget-object v4, p0, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;->this$0:Lio/rong/imkit/tools/SelectPictureActivity;

    sget v5, Lio/rong/imkit/R$layout;->rc_item_albums:I

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 147
    new-instance v1, Lio/rong/imkit/tools/SelectPictureActivity$ViewHolder;

    .end local v1    # "holder":Lio/rong/imkit/tools/SelectPictureActivity$ViewHolder;
    iget-object v4, p0, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;->this$0:Lio/rong/imkit/tools/SelectPictureActivity;

    invoke-direct {v1, v4}, Lio/rong/imkit/tools/SelectPictureActivity$ViewHolder;-><init>(Lio/rong/imkit/tools/SelectPictureActivity;)V

    .line 148
    .restart local v1    # "holder":Lio/rong/imkit/tools/SelectPictureActivity$ViewHolder;
    sget v4, Lio/rong/imkit/R$id;->rc_icon:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lio/rong/imkit/widget/AsyncImageView;

    iput-object v4, v1, Lio/rong/imkit/tools/SelectPictureActivity$ViewHolder;->icon:Lio/rong/imkit/widget/AsyncImageView;

    .line 149
    sget v4, Lio/rong/imkit/R$id;->rc_checkbox:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, v1, Lio/rong/imkit/tools/SelectPictureActivity$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 150
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 155
    :goto_0
    iget-object v4, v1, Lio/rong/imkit/tools/SelectPictureActivity$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 156
    iget-object v4, v1, Lio/rong/imkit/tools/SelectPictureActivity$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    new-instance v5, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter$1;

    invoke-direct {v5, p0, p1}, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter$1;-><init>(Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;I)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, "found":Z
    iget-object v4, p0, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;->state:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 177
    iget-object v4, p0, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;->this$0:Lio/rong/imkit/tools/SelectPictureActivity;

    invoke-static {v4}, Lio/rong/imkit/tools/SelectPictureActivity;->access$100(Lio/rong/imkit/tools/SelectPictureActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 178
    .local v3, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;->state:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 179
    iget-object v4, v1, Lio/rong/imkit/tools/SelectPictureActivity$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 180
    const/4 v0, 0x1

    .line 184
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_2
    if-nez v0, :cond_3

    .line 185
    iget-object v4, p0, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;->state:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v4, v1, Lio/rong/imkit/tools/SelectPictureActivity$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 191
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    iget-object v5, v1, Lio/rong/imkit/tools/SelectPictureActivity$ViewHolder;->icon:Lio/rong/imkit/widget/AsyncImageView;

    new-instance v6, Lcom/sea_monster/resource/Resource;

    iget-object v4, p0, Lio/rong/imkit/tools/SelectPictureActivity$PictureAdapter;->this$0:Lio/rong/imkit/tools/SelectPictureActivity;

    invoke-static {v4}, Lio/rong/imkit/tools/SelectPictureActivity;->access$000(Lio/rong/imkit/tools/SelectPictureActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    invoke-direct {v6, v4}, Lcom/sea_monster/resource/Resource;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Lio/rong/imkit/widget/AsyncImageView;->setResource(Lcom/sea_monster/resource/Resource;)V

    .line 193
    return-object p2

    .line 152
    .end local v0    # "found":Z
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Lio/rong/imkit/tools/SelectPictureActivity$ViewHolder;
    check-cast v1, Lio/rong/imkit/tools/SelectPictureActivity$ViewHolder;

    .restart local v1    # "holder":Lio/rong/imkit/tools/SelectPictureActivity$ViewHolder;
    goto :goto_0

    .line 189
    .restart local v0    # "found":Z
    :cond_5
    iget-object v4, v1, Lio/rong/imkit/tools/SelectPictureActivity$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method
