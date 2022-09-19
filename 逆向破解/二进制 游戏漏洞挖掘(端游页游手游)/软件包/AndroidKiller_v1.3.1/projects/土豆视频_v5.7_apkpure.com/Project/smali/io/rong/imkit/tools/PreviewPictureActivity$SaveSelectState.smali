.class Lio/rong/imkit/tools/PreviewPictureActivity$SaveSelectState;
.super Ljava/lang/Object;
.source "PreviewPictureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/tools/PreviewPictureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SaveSelectState"
.end annotation


# instance fields
.field private isSelect:Ljava/lang/Boolean;

.field private mUri:Landroid/net/Uri;

.field final synthetic this$0:Lio/rong/imkit/tools/PreviewPictureActivity;


# direct methods
.method constructor <init>(Lio/rong/imkit/tools/PreviewPictureActivity;Landroid/net/Uri;Ljava/lang/Boolean;)V
    .locals 0
    .param p2, "mUri"    # Landroid/net/Uri;
    .param p3, "isSelect"    # Ljava/lang/Boolean;

    .prologue
    .line 190
    iput-object p1, p0, Lio/rong/imkit/tools/PreviewPictureActivity$SaveSelectState;->this$0:Lio/rong/imkit/tools/PreviewPictureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p2, p0, Lio/rong/imkit/tools/PreviewPictureActivity$SaveSelectState;->mUri:Landroid/net/Uri;

    .line 192
    iput-object p3, p0, Lio/rong/imkit/tools/PreviewPictureActivity$SaveSelectState;->isSelect:Ljava/lang/Boolean;

    .line 193
    return-void
.end method

.method static synthetic access$200(Lio/rong/imkit/tools/PreviewPictureActivity$SaveSelectState;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/tools/PreviewPictureActivity$SaveSelectState;

    .prologue
    .line 184
    iget-object v0, p0, Lio/rong/imkit/tools/PreviewPictureActivity$SaveSelectState;->isSelect:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lio/rong/imkit/tools/PreviewPictureActivity$SaveSelectState;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isSelect()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lio/rong/imkit/tools/PreviewPictureActivity$SaveSelectState;->isSelect:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setIsSelect(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isSelect"    # Ljava/lang/Boolean;

    .prologue
    .line 208
    iput-object p1, p0, Lio/rong/imkit/tools/PreviewPictureActivity$SaveSelectState;->isSelect:Ljava/lang/Boolean;

    .line 209
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "mUri"    # Landroid/net/Uri;

    .prologue
    .line 200
    iput-object p1, p0, Lio/rong/imkit/tools/PreviewPictureActivity$SaveSelectState;->mUri:Landroid/net/Uri;

    .line 201
    return-void
.end method
