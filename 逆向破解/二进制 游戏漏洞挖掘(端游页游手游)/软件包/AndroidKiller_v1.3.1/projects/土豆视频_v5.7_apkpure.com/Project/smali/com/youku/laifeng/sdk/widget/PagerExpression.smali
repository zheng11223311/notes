.class public Lcom/youku/laifeng/sdk/widget/PagerExpression;
.super Landroid/widget/LinearLayout;
.source "PagerExpression.java"


# static fields
.field public static final RES_ID:Ljava/lang/String; = "RESOURCE_ID"

.field public static final RES_NAME:Ljava/lang/String; = "RESOURCE_NAME"


# instance fields
.field private listItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mGridview:Lcom/youku/laifeng/sdk/widget/NoScrollGridView;

.field private mListener:Lcom/youku/laifeng/sdk/control/IExpressionSelectListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/PagerExpression;->mGridview:Lcom/youku/laifeng/sdk/widget/NoScrollGridView;

    .line 29
    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/PagerExpression;->listItems:Ljava/util/List;

    .line 30
    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/PagerExpression;->mListener:Lcom/youku/laifeng/sdk/control/IExpressionSelectListener;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/PagerExpression;->mGridview:Lcom/youku/laifeng/sdk/widget/NoScrollGridView;

    .line 29
    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/PagerExpression;->listItems:Ljava/util/List;

    .line 30
    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/PagerExpression;->mListener:Lcom/youku/laifeng/sdk/control/IExpressionSelectListener;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/youku/laifeng/sdk/widget/PagerExpression;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/PagerExpression;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/PagerExpression;->listItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/laifeng/sdk/widget/PagerExpression;)Lcom/youku/laifeng/sdk/control/IExpressionSelectListener;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/PagerExpression;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/PagerExpression;->mListener:Lcom/youku/laifeng/sdk/control/IExpressionSelectListener;

    return-object v0
.end method


# virtual methods
.method public init(IILcom/youku/laifeng/sdk/control/IExpressionSelectListener;)V
    .locals 17
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "l"    # Lcom/youku/laifeng/sdk/control/IExpressionSelectListener;

    .prologue
    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/youku/laifeng/sdk/widget/PagerExpression;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "id"

    const-string v5, "expression_gridview"

    invoke-static {v3, v4, v5}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/youku/laifeng/sdk/widget/PagerExpression;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/youku/laifeng/sdk/widget/NoScrollGridView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/youku/laifeng/sdk/widget/PagerExpression;->mGridview:Lcom/youku/laifeng/sdk/widget/NoScrollGridView;

    .line 42
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/youku/laifeng/sdk/widget/PagerExpression;->mListener:Lcom/youku/laifeng/sdk/control/IExpressionSelectListener;

    .line 43
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/youku/laifeng/sdk/widget/PagerExpression;->listItems:Ljava/util/List;

    .line 44
    move/from16 v11, p1

    .local v11, "i":I
    :goto_0
    move/from16 v0, p2

    if-ge v11, v0, :cond_4

    .line 45
    const/4 v9, 0x0

    .line 46
    .local v9, "field":Ljava/lang/reflect/Field;
    const-string v10, ""

    .line 47
    .local v10, "fields":Ljava/lang/String;
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 49
    .local v12, "listItem":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v3, 0xa

    if-ge v11, v3, :cond_2

    .line 50
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "f00"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 51
    const-string v3, "RESOURCE_NAME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "f00"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v12, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_0
    :goto_1
    const-string v3, "RESOURCE_ID"

    invoke-virtual/range {p0 .. p0}, Lcom/youku/laifeng/sdk/widget/PagerExpression;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "drawable"

    invoke-static {v4, v5, v10}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v12, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/widget/PagerExpression;->listItems:Ljava/util/List;

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_1
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 52
    :cond_2
    const/16 v3, 0xa

    if-lt v11, v3, :cond_3

    const/16 v3, 0x64

    if-ge v11, v3, :cond_3

    .line 53
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "f0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 54
    const-string v3, "RESOURCE_NAME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "f0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v12, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 60
    :catch_0
    move-exception v8

    .line 61
    .local v8, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v3, :cond_1

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 55
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_3
    const/16 v3, 0x64

    if-lt v11, v3, :cond_0

    .line 56
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 57
    const-string v3, "RESOURCE_NAME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v12, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 66
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "fields":Ljava/lang/String;
    .end local v12    # "listItem":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    new-instance v2, Landroid/widget/SimpleAdapter;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/youku/laifeng/sdk/widget/PagerExpression;->listItems:Ljava/util/List;

    invoke-virtual/range {p0 .. p0}, Lcom/youku/laifeng/sdk/widget/PagerExpression;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout"

    const-string v7, "lf_expression_grid_cell"

    invoke-static {v5, v6, v7}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v13, "RESOURCE_ID"

    aput-object v13, v6, v7

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/youku/laifeng/sdk/widget/PagerExpression;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "id"

    const-string v16, "image"

    invoke-static/range {v14 .. v16}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    aput v14, v7, v13

    invoke-direct/range {v2 .. v7}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 67
    .local v2, "simpleAdapter":Landroid/widget/SimpleAdapter;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/widget/PagerExpression;->mGridview:Lcom/youku/laifeng/sdk/widget/NoScrollGridView;

    invoke-virtual {v3, v2}, Lcom/youku/laifeng/sdk/widget/NoScrollGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/widget/PagerExpression;->mGridview:Lcom/youku/laifeng/sdk/widget/NoScrollGridView;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/youku/laifeng/sdk/widget/NoScrollGridView;->setNumColumns(I)V

    .line 69
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/youku/laifeng/sdk/widget/PagerExpression;->mGridview:Lcom/youku/laifeng/sdk/widget/NoScrollGridView;

    new-instance v4, Lcom/youku/laifeng/sdk/widget/PagerExpression$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/youku/laifeng/sdk/widget/PagerExpression$1;-><init>(Lcom/youku/laifeng/sdk/widget/PagerExpression;)V

    invoke-virtual {v3, v4}, Lcom/youku/laifeng/sdk/widget/NoScrollGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 76
    return-void
.end method
