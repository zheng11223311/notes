.class public final Lcn/com/iresearch/mapptracker/a/e/f;
.super Ljava/lang/Object;


# static fields
.field private static final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/com/iresearch/mapptracker/a/e/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/com/iresearch/mapptracker/a/e/e;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/com/iresearch/mapptracker/a/e/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Lcn/com/iresearch/mapptracker/a/e/a;

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/com/iresearch/mapptracker/a/e/d;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/com/iresearch/mapptracker/a/e/f;->g:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcn/com/iresearch/mapptracker/a/e/f;->a:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/com/iresearch/mapptracker/a/e/f;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/com/iresearch/mapptracker/a/e/f;->b:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Lcn/com/iresearch/mapptracker/a/e/f;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcn/com/iresearch/mapptracker/a/e/f;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Lcn/com/iresearch/mapptracker/a/b/b;

    const-string v1, "table info get error,because the clazz is null"

    invoke-direct {v0, v1}, Lcn/com/iresearch/mapptracker/a/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcn/com/iresearch/mapptracker/a/e/f;->g:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/iresearch/mapptracker/a/e/f;

    if-nez v0, :cond_8

    new-instance v1, Lcn/com/iresearch/mapptracker/a/e/f;

    invoke-direct {v1}, Lcn/com/iresearch/mapptracker/a/e/f;-><init>()V

    const-class v0, Lcn/com/iresearch/mapptracker/a/a/a/e;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcn/com/iresearch/mapptracker/a/a/a/e;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcn/com/iresearch/mapptracker/a/a/a/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_9

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x2e

    const/16 v3, 0x5f

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Lcn/com/iresearch/mapptracker/a/e/f;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    invoke-static {p0}, Lcn/com/iresearch/mapptracker/dao/a;->getPrimaryKeyField(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_a

    new-instance v2, Lcn/com/iresearch/mapptracker/a/e/a;

    invoke-direct {v2}, Lcn/com/iresearch/mapptracker/a/e/a;-><init>()V

    invoke-static {v0}, Lcn/com/iresearch/mapptracker/a/c/a;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/com/iresearch/mapptracker/a/e/a;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    invoke-static {}, Lcn/com/iresearch/mapptracker/a/e/a;->b()V

    invoke-static {p0, v0}, Lcn/com/iresearch/mapptracker/a/c/a;->b(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/com/iresearch/mapptracker/a/e/a;->b(Ljava/lang/reflect/Method;)V

    invoke-static {p0, v0}, Lcn/com/iresearch/mapptracker/a/c/a;->a(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/com/iresearch/mapptracker/a/e/a;->a(Ljava/lang/reflect/Method;)V

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/com/iresearch/mapptracker/a/e/a;->a(Ljava/lang/Class;)V

    iput-object v2, v1, Lcn/com/iresearch/mapptracker/a/e/f;->d:Lcn/com/iresearch/mapptracker/a/e/a;

    invoke-static {p0}, Lcn/com/iresearch/mapptracker/dao/a;->getPropertyList(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_3
    invoke-static {p0}, Lcn/com/iresearch/mapptracker/dao/a;->getManyToOneList(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_5
    invoke-static {p0}, Lcn/com/iresearch/mapptracker/dao/a;->getOneToManyList(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_7
    sget-object v0, Lcn/com/iresearch/mapptracker/a/e/f;->g:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_8
    if-nez v0, :cond_e

    new-instance v0, Lcn/com/iresearch/mapptracker/a/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "the class["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\'s table is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/com/iresearch/mapptracker/a/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-interface {v0}, Lcn/com/iresearch/mapptracker/a/a/a/e;->a()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    new-instance v0, Lcn/com/iresearch/mapptracker/a/b/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "the class["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]\'s idField is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/com/iresearch/mapptracker/a/b/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/iresearch/mapptracker/a/e/e;

    if-eqz v0, :cond_2

    iget-object v3, v1, Lcn/com/iresearch/mapptracker/a/e/f;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcn/com/iresearch/mapptracker/a/e/e;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/iresearch/mapptracker/a/e/c;

    if-eqz v0, :cond_4

    iget-object v3, v1, Lcn/com/iresearch/mapptracker/a/e/f;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcn/com/iresearch/mapptracker/a/e/c;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/iresearch/mapptracker/a/e/d;

    if-eqz v0, :cond_6

    iget-object v3, v1, Lcn/com/iresearch/mapptracker/a/e/f;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcn/com/iresearch/mapptracker/a/e/d;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_e
    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/a/e/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcn/com/iresearch/mapptracker/a/e/a;
    .locals 1

    iget-object v0, p0, Lcn/com/iresearch/mapptracker/a/e/f;->d:Lcn/com/iresearch/mapptracker/a/e/a;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcn/com/iresearch/mapptracker/a/e/f;->f:Z

    return v0
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/com/iresearch/mapptracker/a/e/f;->f:Z

    return-void
.end method
