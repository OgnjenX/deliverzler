buildscript {
    repositories {
        google()
        mavenCentral()
    }
    dependencies {
        // Use the correct Kotlin DSL syntax for classpath
        classpath("com.android.tools.build:gradle:7.2.2")  // Ensure this matches the required version
        classpath("org.jetbrains.kotlin:kotlin-gradle-plugin:1.6.0")  // Ensure this matches your Kotlin version
    }
}

allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

val newBuildDir: Directory = rootProject.layout.buildDirectory.dir("../../build").get()
rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)
}

subprojects {
    project.evaluationDependsOn(":app")
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
