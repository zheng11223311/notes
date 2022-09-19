.class final Lcom/youku/laifeng/libcuteroom/utils/RegularExpressionUtil$1;
.super Landroid/text/style/DynamicDrawableSpan;
.source "RegularExpressionUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/laifeng/libcuteroom/utils/RegularExpressionUtil;->dealExpression(Landroid/text/SpannableString;Ljava/util/regex/Pattern;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$resId:I


# direct methods
.method constructor <init>(ILandroid/content/Context;I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 41
    iput-object p2, p0, Lcom/youku/laifeng/libcuteroom/utils/RegularExpressionUtil$1;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/youku/laifeng/libcuteroom/utils/RegularExpressionUtil$1;->val$resId:I

    invoke-direct {p0, p1}, Landroid/text/style/DynamicDrawableSpan;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x41900000    # 18.0f

    .line 44
    iget-object v2, p0, Lcom/youku/laifeng/libcuteroom/utils/RegularExpressionUtil$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/youku/laifeng/libcuteroom/utils/RegularExpressionUtil$1;->val$resId:I

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 45
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->convertBitmap2Drawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 46
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->DpToPx(F)I

    move-result v2

    invoke-static {v4}, Lcom/youku/laifeng/libcuteroom/utils/Utils;->DpToPx(F)I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 47
    return-object v1
.end method
