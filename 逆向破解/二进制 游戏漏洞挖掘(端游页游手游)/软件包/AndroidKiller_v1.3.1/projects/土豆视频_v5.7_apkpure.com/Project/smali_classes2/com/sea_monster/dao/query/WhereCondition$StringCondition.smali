.class public Lcom/sea_monster/dao/query/WhereCondition$StringCondition;
.super Lcom/sea_monster/dao/query/WhereCondition$AbstractCondition;
.source "WhereCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sea_monster/dao/query/WhereCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringCondition"
.end annotation


# instance fields
.field protected final string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/sea_monster/dao/query/WhereCondition$AbstractCondition;-><init>()V

    .line 229
    iput-object p1, p0, Lcom/sea_monster/dao/query/WhereCondition$StringCondition;->string:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 233
    invoke-direct {p0, p2}, Lcom/sea_monster/dao/query/WhereCondition$AbstractCondition;-><init>(Ljava/lang/Object;)V

    .line 234
    iput-object p1, p0, Lcom/sea_monster/dao/query/WhereCondition$StringCondition;->string:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    .line 238
    invoke-direct {p0, p2}, Lcom/sea_monster/dao/query/WhereCondition$AbstractCondition;-><init>([Ljava/lang/Object;)V

    .line 239
    iput-object p1, p0, Lcom/sea_monster/dao/query/WhereCondition$StringCondition;->string:Ljava/lang/String;

    .line 240
    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/sea_monster/dao/query/WhereCondition$StringCondition;->string:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    return-void
.end method
