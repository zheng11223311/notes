.class public abstract Lcom/youku/laifeng/libcuteroom/model/factory/AbsFactory;
.super Ljava/lang/Object;
.source "AbsFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract make(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method protected abstract make(Ljava/lang/Class;Ljava/lang/String;Lcom/youku/laifeng/libcuteroom/model/listener/OnDataParserListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Lcom/youku/laifeng/libcuteroom/model/listener/OnDataParserListener",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method protected makeProduct(Ljava/lang/String;)Lcom/youku/laifeng/libcuteroom/model/data/AbsProduct;
    .locals 3
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 11
    const/4 v1, 0x0

    .line 13
    .local v1, "product":Ljava/lang/Object;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 14
    instance-of v2, v1, Lcom/youku/laifeng/libcuteroom/model/data/AbsProduct;

    if-eqz v2, :cond_0

    .line 15
    check-cast v1, Lcom/youku/laifeng/libcuteroom/model/data/AbsProduct;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 24
    .end local v1    # "product":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 17
    :catch_0
    move-exception v0

    .line 18
    .local v0, "e":Ljava/lang/InstantiationException;
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 24
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :cond_0
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 19
    :catch_1
    move-exception v0

    .line 20
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 21
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 22
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    sget-boolean v2, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1
.end method
