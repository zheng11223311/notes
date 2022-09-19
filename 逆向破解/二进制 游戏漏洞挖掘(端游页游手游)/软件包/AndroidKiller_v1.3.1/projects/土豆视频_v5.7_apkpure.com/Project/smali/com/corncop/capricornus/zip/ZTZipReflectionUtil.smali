.class Lcom/corncop/capricornus/zip/ZTZipReflectionUtil;
.super Ljava/lang/Object;
.source "ZTZipReflectionUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method static getClassForName(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/lang/Class",
            "<+TT;>;"
        }
    .end annotation

    .prologue
    .line 12
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 14
    :catch_0
    move-exception v0

    .line 15
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Lcom/corncop/capricornus/zip/ZipException;

    invoke-direct {v1, v0}, Lcom/corncop/capricornus/zip/ZipException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 17
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 18
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Lcom/corncop/capricornus/zip/ZipException;

    invoke-direct {v1, v0}, Lcom/corncop/capricornus/zip/ZipException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method static varargs getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Lcom/corncop/capricornus/zip/ZipException;

    invoke-direct {v1, v0}, Lcom/corncop/capricornus/zip/ZipException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method static varargs invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/corncop/capricornus/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 33
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    return-object v1

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Lcom/corncop/capricornus/zip/ZipException;

    invoke-direct {v1, v0}, Lcom/corncop/capricornus/zip/ZipException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 38
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Lcom/corncop/capricornus/zip/ZipException;

    invoke-direct {v1, v0}, Lcom/corncop/capricornus/zip/ZipException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 41
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/corncop/capricornus/zip/ZipException;

    invoke-direct {v1, v0}, Lcom/corncop/capricornus/zip/ZipException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
