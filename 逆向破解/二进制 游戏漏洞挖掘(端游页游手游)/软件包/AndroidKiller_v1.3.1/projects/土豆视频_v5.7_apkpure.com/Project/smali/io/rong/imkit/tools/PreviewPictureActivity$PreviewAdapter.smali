.class Lio/rong/imkit/tools/PreviewPictureActivity$PreviewAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "PreviewPictureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/tools/PreviewPictureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreviewAdapter"
.end annotation


# instance fields
.field private selectedPicture:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/rong/imkit/tools/PreviewPictureActivity;


# direct methods
.method public constructor <init>(Lio/rong/imkit/tools/PreviewPictureActivity;Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V
    .locals 0
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p3, "selectedPicture":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iput-object p1, p0, Lio/rong/imkit/tools/PreviewPictureActivity$PreviewAdapter;->this$0:Lio/rong/imkit/tools/PreviewPictureActivity;

    .line 158
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 159
    iput-object p3, p0, Lio/rong/imkit/tools/PreviewPictureActivity$PreviewAdapter;->selectedPicture:Ljava/util/ArrayList;

    .line 160
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lio/rong/imkit/tools/PreviewPictureActivity$PreviewAdapter;->selectedPicture:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 164
    new-instance v1, Lio/rong/imkit/tools/PictureFragment;

    iget-object v2, p0, Lio/rong/imkit/tools/PreviewPictureActivity$PreviewAdapter;->this$0:Lio/rong/imkit/tools/PreviewPictureActivity;

    iget-object v0, p0, Lio/rong/imkit/tools/PreviewPictureActivity$PreviewAdapter;->selectedPicture:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-direct {v1, v2, v0}, Lio/rong/imkit/tools/PictureFragment;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 169
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/rong/imkit/tools/PictureFragment;

    .line 170
    .local v1, "mPictureFragment":Lio/rong/imkit/tools/PictureFragment;
    if-eqz v1, :cond_0

    .line 171
    iget-object v2, p0, Lio/rong/imkit/tools/PreviewPictureActivity$PreviewAdapter;->selectedPicture:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 173
    .local v0, "info":Landroid/net/Uri;
    invoke-virtual {v1, v0}, Lio/rong/imkit/tools/PictureFragment;->initPhoto(Landroid/net/Uri;)V

    .line 175
    .end local v0    # "info":Landroid/net/Uri;
    :cond_0
    return-object v1
.end method
