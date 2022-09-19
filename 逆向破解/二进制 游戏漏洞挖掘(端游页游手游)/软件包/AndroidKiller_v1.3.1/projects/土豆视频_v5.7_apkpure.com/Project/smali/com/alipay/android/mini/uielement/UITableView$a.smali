.class public final enum Lcom/alipay/android/mini/uielement/UITableView$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/mini/uielement/UITableView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lcom/alipay/android/mini/uielement/UITableView$a;

.field public static final enum b:Lcom/alipay/android/mini/uielement/UITableView$a;

.field public static final enum c:Lcom/alipay/android/mini/uielement/UITableView$a;

.field public static final enum d:Lcom/alipay/android/mini/uielement/UITableView$a;

.field public static final enum e:Lcom/alipay/android/mini/uielement/UITableView$a;

.field private static final synthetic g:[Lcom/alipay/android/mini/uielement/UITableView$a;


# instance fields
.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 327
    new-instance v0, Lcom/alipay/android/mini/uielement/UITableView$a;

    const-string v1, "LEFT_TEXT1"

    const-string/jumbo v2, "table_left_text"

    invoke-static {v2}, Lj/i;->a(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v3, v2}, Lcom/alipay/android/mini/uielement/UITableView$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/android/mini/uielement/UITableView$a;->a:Lcom/alipay/android/mini/uielement/UITableView$a;

    new-instance v0, Lcom/alipay/android/mini/uielement/UITableView$a;

    const-string v1, "LEFT_TEXT2"

    const-string/jumbo v2, "table_left_text_2"

    invoke-static {v2}, Lj/i;->a(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/android/mini/uielement/UITableView$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/android/mini/uielement/UITableView$a;->b:Lcom/alipay/android/mini/uielement/UITableView$a;

    .line 328
    new-instance v0, Lcom/alipay/android/mini/uielement/UITableView$a;

    const-string v1, "RIGHT_IMAGE"

    const-string/jumbo v2, "table_right_image"

    invoke-static {v2}, Lj/i;->a(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/android/mini/uielement/UITableView$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/android/mini/uielement/UITableView$a;->c:Lcom/alipay/android/mini/uielement/UITableView$a;

    .line 329
    new-instance v0, Lcom/alipay/android/mini/uielement/UITableView$a;

    const-string v1, "ARROW_IMAGE"

    const-string/jumbo v2, "table_arrow"

    invoke-static {v2}, Lj/i;->a(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v6, v2}, Lcom/alipay/android/mini/uielement/UITableView$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/android/mini/uielement/UITableView$a;->d:Lcom/alipay/android/mini/uielement/UITableView$a;

    .line 330
    new-instance v0, Lcom/alipay/android/mini/uielement/UITableView$a;

    const-string v1, "ICON_IMAGE"

    const-string/jumbo v2, "table_iconView"

    invoke-static {v2}, Lj/i;->a(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v7, v2}, Lcom/alipay/android/mini/uielement/UITableView$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/android/mini/uielement/UITableView$a;->e:Lcom/alipay/android/mini/uielement/UITableView$a;

    .line 326
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alipay/android/mini/uielement/UITableView$a;

    sget-object v1, Lcom/alipay/android/mini/uielement/UITableView$a;->a:Lcom/alipay/android/mini/uielement/UITableView$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/mini/uielement/UITableView$a;->b:Lcom/alipay/android/mini/uielement/UITableView$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/android/mini/uielement/UITableView$a;->c:Lcom/alipay/android/mini/uielement/UITableView$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/android/mini/uielement/UITableView$a;->d:Lcom/alipay/android/mini/uielement/UITableView$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/android/mini/uielement/UITableView$a;->e:Lcom/alipay/android/mini/uielement/UITableView$a;

    aput-object v1, v0, v7

    sput-object v0, Lcom/alipay/android/mini/uielement/UITableView$a;->g:[Lcom/alipay/android/mini/uielement/UITableView$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 336
    iput p3, p0, Lcom/alipay/android/mini/uielement/UITableView$a;->f:I

    .line 337
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/mini/uielement/UITableView$a;
    .locals 1

    .prologue
    .line 326
    const-class v0, Lcom/alipay/android/mini/uielement/UITableView$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/mini/uielement/UITableView$a;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/mini/uielement/UITableView$a;
    .locals 1

    .prologue
    .line 326
    sget-object v0, Lcom/alipay/android/mini/uielement/UITableView$a;->g:[Lcom/alipay/android/mini/uielement/UITableView$a;

    invoke-virtual {v0}, [Lcom/alipay/android/mini/uielement/UITableView$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/mini/uielement/UITableView$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/alipay/android/mini/uielement/UITableView$a;->f:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 345
    iput p1, p0, Lcom/alipay/android/mini/uielement/UITableView$a;->f:I

    .line 346
    return-void
.end method
