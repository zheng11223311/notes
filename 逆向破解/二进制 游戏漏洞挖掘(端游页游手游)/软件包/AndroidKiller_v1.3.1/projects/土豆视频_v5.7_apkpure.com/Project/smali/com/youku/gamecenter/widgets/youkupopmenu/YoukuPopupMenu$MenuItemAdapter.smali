.class Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "YoukuPopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MenuItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItemAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItem;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 210
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 212
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 217
    if-nez p2, :cond_0

    .line 218
    iget-object v2, p0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItemAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/youku/gamecenter/R$layout;->menu_list_item:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 219
    new-instance v0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItemAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItemAdapter$ViewHolder;-><init>()V

    .line 220
    .local v0, "holder":Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItemAdapter$ViewHolder;
    sget v2, Lcom/youku/gamecenter/R$id;->icon:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItemAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 221
    sget v2, Lcom/youku/gamecenter/R$id;->title:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItemAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 222
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 227
    :goto_0
    invoke-virtual {p0, p1}, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItem;

    .line 228
    .local v1, "item":Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItem;
    invoke-virtual {v1}, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 229
    iget-object v2, v0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItemAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 230
    iget-object v2, v0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItemAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    :goto_1
    iget-object v2, v0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItemAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    return-object p2

    .line 224
    .end local v0    # "holder":Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItemAdapter$ViewHolder;
    .end local v1    # "item":Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItem;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItemAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItemAdapter$ViewHolder;
    goto :goto_0

    .line 232
    .restart local v1    # "item":Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItem;
    :cond_1
    iget-object v2, v0, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupMenu$MenuItemAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
