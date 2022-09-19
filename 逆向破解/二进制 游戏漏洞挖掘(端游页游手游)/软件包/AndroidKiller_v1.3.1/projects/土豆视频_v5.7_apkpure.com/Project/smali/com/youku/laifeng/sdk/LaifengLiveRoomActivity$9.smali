.class Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$9;
.super Ljava/lang/Object;
.source "LaifengLiveRoomActivity.java"

# interfaces
.implements Lcom/youku/laifeng/sdk/control/IExpressionSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;


# direct methods
.method constructor <init>(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    .prologue
    .line 1045
    iput-object p1, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$9;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpressionClick(Ljava/lang/String;I)V
    .locals 9
    .param p1, "ResName"    # Ljava/lang/String;
    .param p2, "ResId"    # I

    .prologue
    const/high16 v7, 0x41900000    # 18.0f

    .line 1048
    iget-object v6, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$9;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-virtual {v6}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1049
    .local v1, "bmp":Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->DpToPx(F)I

    move-result v6

    invoke-static {v7}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->DpToPx(F)I

    move-result v7

    const/4 v8, 0x1

    invoke-static {v1, v6, v7, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1050
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v6

    invoke-direct {v3, v6, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 1051
    .local v3, "imageSpan":Landroid/text/style/ImageSpan;
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1052
    .local v5, "spannableString":Landroid/text/SpannableString;
    const/4 v6, 0x0

    const/4 v7, 0x4

    const/16 v8, 0x21

    invoke-virtual {v5, v3, v6, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1053
    iget-object v6, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$9;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v6}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$2300(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v4

    .line 1054
    .local v4, "index":I
    iget-object v6, p0, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity$9;->this$0:Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;

    invoke-static {v6}, Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;->access$2300(Lcom/youku/laifeng/sdk/LaifengLiveRoomActivity;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 1055
    .local v2, "editable":Landroid/text/Editable;
    invoke-interface {v2, v4, v5}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1056
    return-void
.end method
