.class final Lcom/youku/laifeng/libcuteroom/utils/RegularExpressionUtil$2;
.super Landroid/text/style/DynamicDrawableSpan;
.source "RegularExpressionUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/laifeng/libcuteroom/utils/RegularExpressionUtil;->dealExpression(Landroid/text/SpannableString;Ljava/util/regex/Pattern;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 70
    iput-object p2, p0, Lcom/youku/laifeng/libcuteroom/utils/RegularExpressionUtil$2;->val$path:Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x41c00000    # 24.0f

    .line 73
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/RegularExpressionUtil$2;->val$path:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 74
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 76
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v3

    const-string v4, "drawable"

    const-string v5, "lf_default_gift"

    invoke-static {v3, v4, v5}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 77
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->convertBitmap2Drawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 79
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_0
    invoke-static {v6}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->DpToPx(F)I

    move-result v2

    invoke-static {v6}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->DpToPx(F)I

    move-result v3

    invoke-virtual {v1, v7, v7, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 80
    return-object v1
.end method
